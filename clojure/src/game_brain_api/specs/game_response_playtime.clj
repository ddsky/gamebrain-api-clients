(ns game-brain-api.specs.game-response-playtime
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def game-response-playtime-data
  {
   (ds/opt :percentiles) (s/coll-of int?)
   (ds/opt :min) int?
   (ds/opt :median) int?
   (ds/opt :max) int?
   (ds/opt :mean) float?
   (ds/opt :mentions) int?
   })

(def game-response-playtime-spec
  (ds/spec
    {:name ::game-response-playtime
     :spec game-response-playtime-data}))
