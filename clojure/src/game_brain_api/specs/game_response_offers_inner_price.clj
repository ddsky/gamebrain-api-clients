(ns game-brain-api.specs.game-response-offers-inner-price
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def game-response-offers-inner-price-data
  {
   (ds/opt :currency) string?
   (ds/opt :discount_percent) float?
   (ds/opt :value) float?
   (ds/opt :initial) float?
   })

(def game-response-offers-inner-price-spec
  (ds/spec
    {:name ::game-response-offers-inner-price
     :spec game-response-offers-inner-price-data}))
