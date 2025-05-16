(ns game-brain-api.specs.search-response-results-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [game-brain-api.specs.search-response-results-inner-rating :refer :all]
            )
  (:import (java.io File)))


(def search-response-results-inner-data
  {
   (ds/opt :id) int?
   (ds/opt :year) float?
   (ds/opt :name) string?
   (ds/opt :genre) string?
   (ds/opt :image) string?
   (ds/opt :link) string?
   (ds/opt :rating) search-response-results-inner-rating-spec
   (ds/opt :adult_only) boolean?
   (ds/opt :screenshots) (s/coll-of string?)
   (ds/opt :micro_trailer) string?
   (ds/opt :gameplay) string?
   (ds/opt :short_description) string?
   })

(def search-response-results-inner-spec
  (ds/spec
    {:name ::search-response-results-inner
     :spec search-response-results-inner-data}))
