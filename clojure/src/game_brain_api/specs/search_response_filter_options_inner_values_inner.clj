(ns game-brain-api.specs.search-response-filter-options-inner-values-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-response-filter-options-inner-values-inner-data
  {
   (ds/opt :name) string?
   (ds/opt :key) string?
   (ds/opt :count) float?
   })

(def search-response-filter-options-inner-values-inner-spec
  (ds/spec
    {:name ::search-response-filter-options-inner-values-inner
     :spec search-response-filter-options-inner-values-inner-data}))
