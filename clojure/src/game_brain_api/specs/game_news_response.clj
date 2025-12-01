(ns game-brain-api.specs.game-news-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [game-brain-api.specs.game-news-item :refer :all]
            )
  (:import (java.io File)))


(def game-news-response-data
  {
   (ds/req :news) (s/coll-of game-news-item-spec)
   })

(def game-news-response-spec
  (ds/spec
    {:name ::game-news-response
     :spec game-news-response-data}))
