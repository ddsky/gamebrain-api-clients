(ns game-brain-api.specs.search-response-sorting-options-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-response-sorting-options-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :sort) string?
   (ds/opt :key) string?
   })

(def search-response-sorting-options-inner-spec
  (ds/spec
    {:name ::search-response-sorting-options-inner
     :spec search-response-sorting-options-inner-data}))
