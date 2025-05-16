(ns game-brain-api.specs.game-response-official-stores-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def game-response-official-stores-inner-data
  {
   (ds/opt :source) string?
   (ds/opt :url) string?
   })

(def game-response-official-stores-inner-spec
  (ds/spec
    {:name ::game-response-official-stores-inner
     :spec game-response-official-stores-inner-data}))
