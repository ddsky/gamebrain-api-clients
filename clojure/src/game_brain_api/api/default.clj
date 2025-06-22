(ns game-brain-api.api.default
  (:require [game-brain-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [game-brain-api.specs.search-suggestion-response-results-inner :refer :all]
            [game-brain-api.specs.search-response-active-filter-options-inner :refer :all]
            [game-brain-api.specs.game-response :refer :all]
            [game-brain-api.specs.game-response-official-stores-inner :refer :all]
            [game-brain-api.specs.search-suggestion-response :refer :all]
            [game-brain-api.specs.similar-games-response :refer :all]
            [game-brain-api.specs.search-response-filter-options-inner :refer :all]
            [game-brain-api.specs.game-response-offers-inner :refer :all]
            [game-brain-api.specs.game-response-playtime :refer :all]
            [game-brain-api.specs.search-response-filter-options-inner-values-inner :refer :all]
            [game-brain-api.specs.search-response-sorting-options-inner :refer :all]
            [game-brain-api.specs.game-response-offers-inner-price :refer :all]
            [game-brain-api.specs.search-response-results-inner-rating :refer :all]
            [game-brain-api.specs.search-response-results-inner :refer :all]
            [game-brain-api.specs.game-response-rating :refer :all]
            [game-brain-api.specs.game-response-platforms-inner :refer :all]
            [game-brain-api.specs.search-response-sorting :refer :all]
            [game-brain-api.specs.search-response-active-filter-options-inner-values-inner :refer :all]
            [game-brain-api.specs.search-response :refer :all]
            )
  (:import (java.io File)))


(defn-spec detail-with-http-info any?
  "Get Game Details
  Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more."
  [id int?, api-key string?]
  (check-required-params id api-key)
  (call-api "/games/{id}" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {"api-key" api-key }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec detail game-response-spec
  "Get Game Details
  Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more."
  [id int?, api-key string?]
  (let [res (:data (detail-with-http-info id api-key))]
    (if (:decode-models *api-context*)
       (st/decode game-response-spec res st/string-transformer)
       res)))


(defn-spec search-with-http-info any?
  "Search Games
  Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination"
  [query string?, offset int?, limit int?, filters string?, sort string?, sort-order string?, generate-filter-options boolean?, api-key string?]
  (check-required-params query offset limit filters sort sort-order generate-filter-options api-key)
  (call-api "/games" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"query" query "offset" offset "limit" limit "filters" filters "sort" sort "sort-order" sort-order "generate-filter-options" generate-filter-options "api-key" api-key }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec search search-response-spec
  "Search Games
  Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination"
  [query string?, offset int?, limit int?, filters string?, sort string?, sort-order string?, generate-filter-options boolean?, api-key string?]
  (let [res (:data (search-with-http-info query offset limit filters sort sort-order generate-filter-options api-key))]
    (if (:decode-models *api-context*)
       (st/decode search-response-spec res st/string-transformer)
       res)))


(defn-spec similar-with-http-info any?
  "Get Similar Games
  Get games that are similar to the given one."
  [id int?, limit int?, api-key string?]
  (check-required-params id limit api-key)
  (call-api "/games/{id}/similar" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {"limit" limit "api-key" api-key }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec similar similar-games-response-spec
  "Get Similar Games
  Get games that are similar to the given one."
  [id int?, limit int?, api-key string?]
  (let [res (:data (similar-with-http-info id limit api-key))]
    (if (:decode-models *api-context*)
       (st/decode similar-games-response-spec res st/string-transformer)
       res)))


(defn-spec suggest-with-http-info any?
  "Get Game Suggestions
  Get game suggestions based on (partial) search queries. For example, the query 'gt' will return games like GTA."
  [query string?, limit int?, api-key string?]
  (check-required-params query limit api-key)
  (call-api "/games/suggestions" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"query" query "limit" limit "api-key" api-key }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec suggest search-suggestion-response-spec
  "Get Game Suggestions
  Get game suggestions based on (partial) search queries. For example, the query 'gt' will return games like GTA."
  [query string?, limit int?, api-key string?]
  (let [res (:data (suggest-with-http-info query limit api-key))]
    (if (:decode-models *api-context*)
       (st/decode search-suggestion-response-spec res st/string-transformer)
       res)))


