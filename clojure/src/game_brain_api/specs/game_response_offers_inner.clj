(ns game-brain-api.specs.game-response-offers-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [game-brain-api.specs.game-response-offers-inner-price :refer :all]
            )
  (:import (java.io File)))


(def game-response-offers-inner-data
  {
   (ds/opt :price) game-response-offers-inner-price-spec
   (ds/opt :store_name) string?
   (ds/opt :platform) string?
   (ds/opt :title) string?
   (ds/opt :url) string?
   })

(def game-response-offers-inner-spec
  (ds/spec
    {:name ::game-response-offers-inner
     :spec game-response-offers-inner-data}))
