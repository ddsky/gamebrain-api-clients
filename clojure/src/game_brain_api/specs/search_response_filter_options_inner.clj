(ns game-brain-api.specs.search-response-filter-options-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [game-brain-api.specs.search-response-filter-options-inner-values-inner :refer :all]
            )
  (:import (java.io File)))


(def search-response-filter-options-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :key) string?
   (ds/opt :values) (s/coll-of search-response-filter-options-inner-values-inner-spec)
   })

(def search-response-filter-options-inner-spec
  (ds/spec
    {:name ::search-response-filter-options-inner
     :spec search-response-filter-options-inner-data}))
