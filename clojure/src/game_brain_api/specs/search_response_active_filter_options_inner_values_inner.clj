(ns game-brain-api.specs.search-response-active-filter-options-inner-values-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-response-active-filter-options-inner-values-inner-data
  {
   (ds/opt :match) string?
   (ds/opt :value) string?
   })

(def search-response-active-filter-options-inner-values-inner-spec
  (ds/spec
    {:name ::search-response-active-filter-options-inner-values-inner
     :spec search-response-active-filter-options-inner-values-inner-data}))
