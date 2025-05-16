(ns game-brain-api.specs.search-response-results-inner-rating
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-response-results-inner-rating-data
  {
   (ds/opt :mean) float?
   (ds/opt :count) float?
   })

(def search-response-results-inner-rating-spec
  (ds/spec
    {:name ::search-response-results-inner-rating
     :spec search-response-results-inner-rating-data}))
