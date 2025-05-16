(ns game-brain-api.specs.search-response-active-filter-options-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [game-brain-api.specs.search-response-active-filter-options-inner-values-inner :refer :all]
            )
  (:import (java.io File)))


(def search-response-active-filter-options-inner-data
  {
   (ds/opt :key) string?
   (ds/opt :connection) string?
   (ds/opt :values) (s/coll-of search-response-active-filter-options-inner-values-inner-spec)
   })

(def search-response-active-filter-options-inner-spec
  (ds/spec
    {:name ::search-response-active-filter-options-inner
     :spec search-response-active-filter-options-inner-data}))
