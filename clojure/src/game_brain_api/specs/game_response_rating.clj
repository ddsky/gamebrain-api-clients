(ns game-brain-api.specs.game-response-rating
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def game-response-rating-data
  {
   (ds/opt :mean) float?
   (ds/opt :count) int?
   (ds/opt :mean_players) float?
   (ds/opt :count_players) int?
   (ds/opt :mean_critics) float?
   (ds/opt :count_critics) int?
   })

(def game-response-rating-spec
  (ds/spec
    {:name ::game-response-rating
     :spec game-response-rating-data}))
