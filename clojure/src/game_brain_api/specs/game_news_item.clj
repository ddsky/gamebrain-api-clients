(ns game-brain-api.specs.game-news-item
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def game-news-item-data
  {
   (ds/req :title) string?
   (ds/req :url) string?
   (ds/req :source) string?
   (ds/opt :image) string?
   (ds/req :published) inst?
   })

(def game-news-item-spec
  (ds/spec
    {:name ::game-news-item
     :spec game-news-item-data}))
