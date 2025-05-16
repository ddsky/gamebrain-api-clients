(ns game-brain-api.specs.search-suggestion-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [game-brain-api.specs.search-suggestion-response-results-inner :refer :all]
            )
  (:import (java.io File)))


(def search-suggestion-response-data
  {
   (ds/opt :results) (s/coll-of search-suggestion-response-results-inner-spec)
   })

(def search-suggestion-response-spec
  (ds/spec
    {:name ::search-suggestion-response
     :spec search-suggestion-response-data}))
