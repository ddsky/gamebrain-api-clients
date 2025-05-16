(ns game-brain-api.specs.search-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [game-brain-api.specs.search-response-sorting :refer :all]
            [game-brain-api.specs.search-response-active-filter-options-inner :refer :all]
            [game-brain-api.specs.search-response-results-inner :refer :all]
            [game-brain-api.specs.search-response-filter-options-inner :refer :all]
            [game-brain-api.specs.search-response-sorting-options-inner :refer :all]
            )
  (:import (java.io File)))


(def search-response-data
  {
   (ds/opt :sorting) search-response-sorting-spec
   (ds/opt :active_filter_options) (s/coll-of search-response-active-filter-options-inner-spec)
   (ds/opt :query) string?
   (ds/opt :total_results) int?
   (ds/opt :limit) int?
   (ds/opt :offset) int?
   (ds/opt :results) (s/coll-of search-response-results-inner-spec)
   (ds/opt :filter_options) (s/coll-of search-response-filter-options-inner-spec)
   (ds/opt :sorting_options) (s/coll-of search-response-sorting-options-inner-spec)
   })

(def search-response-spec
  (ds/spec
    {:name ::search-response
     :spec search-response-data}))
