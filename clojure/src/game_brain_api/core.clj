(ns game-brain-api.core
  (:require [cheshire.core :refer [generate-string parse-string]]
            [clojure.string :as str]
            [clj-http.client :as client])
  (:import (com.fasterxml.jackson.core JsonParseException)
           (java.io File)
           (java.util Date TimeZone)
           (java.text SimpleDateFormat)))

(def auth-definitions
  {"apiKey" {:type :api-key :in :query :param-name "api-key"}
   "headerApiKey" {:type :api-key :in :header :param-name "x-api-key"}})

(def default-api-context
  "Default API context."
  {:base-url        "https://api.gamebrain.co/v1"
   :date-format     "yyyy-MM-dd"
   :datetime-format "yyyy-MM-dd'T'HH:mm:ss.SSSXXX"
   :decode-models   false
   :debug           false
   :auths           {"apiKey" nil
                     "headerApiKey" nil}})

(def ^:dynamic *api-context*
  "Dynamic API context to be applied in API calls."
  default-api-context)

(defn set-api-context
  "Set the *api-context* globally"
  [new-context]
  (alter-var-root #'*api-context* (constantly (merge *api-context* new-context))))

(defmacro with-api-context
  "A helper macro to wrap *api-context* with default values."
  [api-context & body]
  `(let [api-context# ~api-context
         api-context# (-> *api-context*
                          (merge api-context#)
                          (assoc :auths (merge (:auths *api-context*) (:auths api-context#))))]
     (binding [*api-context* api-context#]
       ~@body)))

(defmacro check-required-params
  "Throw exception if any of the given parameters is nil."
  [& params]
  (->> params
       (map (fn [p]
              `(if (nil? ~p)
                 (throw (IllegalArgumentException. ~(str "The parameter \"" p "\" is required"))))))
       (list* 'do)))

(defn with-collection-format
  "Attach collection-format to meta data of the given parameter."
  [param collection-format]
  (and param (with-meta param {:collection-format collection-format})))

(defn- ^SimpleDateFormat make-date-format
  ([^String format-str] (make-date-format format-str nil))
  ([^String format-str ^String time-zone]
   (let [date-format (SimpleDateFormat. format-str)]
     (when time-zone
       (.setTimeZone date-format (TimeZone/getTimeZone time-zone)))
     date-format)))

(defn format-date
  "Format the given Date object with the :date-format defined in *api-options*.
  NOTE: The UTC time zone is used."
  [^Date date]
  (let [{:keys [date-format]} *api-context*]
    (-> (make-date-format date-format "UTC")
        (.format date))))

(defn parse-date
  "Parse the given string to a Date object with the :date-format defined in *api-options*.
  NOTE: The UTC time zone is used."
  [^String s]
  (let [{:keys [date-format]} *api-context*]
    (-> (make-date-format date-format "UTC")
        (.parse s))))

(defn format-datetime
  "Format the given Date object with the :datetime-format defined in *api-options*.
  NOTE: The system's default time zone is used when not provided."
  ([^Date date] (format-datetime date nil))
  ([^Date date ^String time-zone]
   (let [{:keys [datetime-format]} *api-context*]
     (-> (make-date-format datetime-format time-zone)
         (.format date)))))

(defn parse-datetime
  "Parse the given string to a Date object with the :datetime-format defined in *api-options*.
  NOTE: The system's default time zone is used when not provided."
  ([^String s] (parse-datetime s nil))
  ([^String s ^String time-zone]
   (let [{:keys [datetime-format]} *api-context*]
     (-> (make-date-format datetime-format time-zone)
         (.parse s)))))

(defn param->str
  "Format the given parameter value to string."
  [param]
  (cond
    (instance? Date param) (format-datetime param)
    (sequential? param) (str/join "," param)
    :else (str param)))

(defn auth->opts
  "Process the given auth to an option map that might contain request options and parameters."
  [{:keys [type in param-name]} value]
  (case type
    :basic {:req-opts {:basic-auth value}}
    :oauth2 {:req-opts {:oauth-token value}}
    :api-key (case in
               :header {:header-params {param-name value}}
               :query {:query-params {param-name value}}
               (throw (IllegalArgumentException. (str "Invalid `in` for api-key auth: " in))))
    (throw (IllegalArgumentException. (str "Invalid auth `type`: " type)))))

(defn process-auth
  "Process the given auth name into options, which is merged into the given opts."
  [opts auth-name]
  (if-let [value (get-in *api-context* [:auths auth-name])]
    (merge-with merge
                opts
                (auth->opts (get auth-definitions auth-name) value))
    opts))

(defn auths->opts
  "Process the given auth names to an option map that might contain request options and parameters."
  [auth-names]
  (reduce process-auth {} auth-names))

(declare normalize-param)

(defn make-url
  "Make full URL by adding base URL and filling path parameters."
  [path path-params]
  (let [path (reduce (fn [p [k v]]
                       (str/replace p (re-pattern (str "\\{" k "\\}")) (normalize-param v)))
                     path
                     path-params)]
    (str (:base-url *api-context*) path)))

(defn normalize-array-param
  "Normalize array parameter according to :collection-format specified in the parameter's meta data.
  When the parameter contains File, a seq is returned so as to keep File parameters.
  For :multi collection format, a seq is returned which will be handled properly by clj-http.
  For other cases, a string is returned."
  [xs]
  (if (some (partial instance? File) xs)
    (map normalize-param xs)
    (case (-> (meta xs) :collection-format (or :csv))
      :csv (str/join "," (map normalize-param xs))
      :ssv (str/join " " (map normalize-param xs))
      :tsv (str/join "\t" (map normalize-param xs))
      :pipes (str/join "|" (map normalize-param xs))
      :multi (map normalize-param xs))))

(defn normalize-param
  "Normalize parameter value, handling three cases:
  for sequential value, apply `normalize-array-param` which handles collection format;
  for File value, use current value;
  otherwise, apply `param->str`."
  [param]
  (cond
    (sequential? param) (normalize-array-param param)
    (instance? File param) param
    :else (param->str param)))

(defn normalize-params
  "Normalize parameters values: remove nils, format to string with `param->str`."
  [params]
  (->> params
       (remove (comp nil? second))
       (map (fn [[k v]] [k (normalize-param v)]))
       (into {})))

(defn default-to-json-mime
  "Default to JSON MIME if given */* MIME"
  [mime]
  (if (= mime "*/*")
    "application/json"
    mime))

(defn json-mime?
  "Check if the given MIME is a standard JSON MIME or :json."
  [mime]
  (if mime
    (or (= :json mime)
        (re-matches #"(?i)application/json(;.*)?" (name mime)))))

(defn json-preferred-mime
  "Choose a MIME from the given MIMEs with JSON preferred,
  i.e. return JSON if included, otherwise return the first one."
  [mimes]
  (-> (filter json-mime? mimes)
      first
      (or (default-to-json-mime (first mimes)))))

(defn serialize
  "Serialize the given data according to content-type.
  Only JSON is supported for now."
  [data content-type]
  (if (json-mime? content-type)
    (generate-string data {:date-format (:datetime-format *api-context*)})
    (throw (IllegalArgumentException. (str "Content type \"" content-type "\" is not support for serialization")))))

(defn deserialize
  "Deserialize the given HTTP response according to the Content-Type header."
  [{:keys [body] {:keys [content-type]} :headers}]
  (cond
    (json-mime? content-type)
    (try
      (parse-string body true)
      (catch JsonParseException e
        ;; Return the body string directly on JSON parsing error.
        body))

    ;; For other cases, return the body string directly.
    :else body))

(defn form-params->multipart
  "Convert the given form parameters map into a vector as clj-http's :multipart option."
  [form-params]
  (->> form-params
       (map (fn [[k v]] (array-map :name k :content v)))
       vec))

(defn call-api
  "Call an API by making HTTP request and return its response."
  [path method {:keys [path-params body-param content-types accepts auth-names] :as opts}]
  (let [{:keys [debug]} *api-context*
        {:keys [req-opts query-params header-params form-params]} (auths->opts auth-names)
        query-params (merge query-params (:query-params opts))
        header-params (merge header-params (:header-params opts))
        form-params (merge form-params (:form-params opts))
        url (make-url path path-params)
        content-type (or (json-preferred-mime content-types) (and body-param :json))
        accept (or (json-preferred-mime accepts) :json)
        multipart? (= "multipart/form-data" content-type)
        req-opts (cond-> req-opts
                   true (assoc :url url :method method)
                   accept (assoc :accept accept)
                   (seq query-params) (assoc :query-params (normalize-params query-params))
                   (seq header-params) (assoc :headers (normalize-params header-params))
                   (and content-type (not multipart?)) (assoc :content-type content-type)
                   multipart? (assoc :multipart (-> form-params normalize-params form-params->multipart))
                   (and (not multipart?) (seq form-params)) (assoc :form-params (normalize-params form-params))
                   body-param (assoc :body (serialize body-param content-type))
                   debug (assoc :debug true :debug-body true))
        resp (client/request req-opts)]
    (when debug
      (println "Response:")
      (println resp))
    (assoc resp :data (deserialize resp))))
