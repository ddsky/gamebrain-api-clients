(ns game-brain-api.specs.game-response-platforms-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def game-response-platforms-inner-data
  {
   (ds/opt :value) string?
   (ds/opt :name) string?
   })

(def game-response-platforms-inner-spec
  (ds/spec
    {:name ::game-response-platforms-inner
     :spec game-response-platforms-inner-data}))
