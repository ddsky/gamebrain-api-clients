(ns game-brain-api.specs.similar-games-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [game-brain-api.specs.search-response-results-inner :refer :all]
            )
  (:import (java.io File)))


(def similar-games-response-data
  {
   (ds/opt :results) (s/coll-of search-response-results-inner-spec)
   })

(def similar-games-response-spec
  (ds/spec
    {:name ::similar-games-response
     :spec similar-games-response-data}))
