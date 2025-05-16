(ns game-brain-api.specs.search-response-sorting
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-response-sorting-data
  {
   (ds/opt :key) string?
   (ds/opt :direction) string?
   })

(def search-response-sorting-spec
  (ds/spec
    {:name ::search-response-sorting
     :spec search-response-sorting-data}))
