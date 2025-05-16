(ns game-brain-api.specs.game-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [game-brain-api.specs.game-response-rating :refer :all]
            [game-brain-api.specs.game-response-playtime :refer :all]
            [game-brain-api.specs.game-response-platforms-inner :refer :all]
            [game-brain-api.specs.game-response-platforms-inner :refer :all]
            [game-brain-api.specs.game-response-platforms-inner :refer :all]
            [game-brain-api.specs.game-response-platforms-inner :refer :all]
            [game-brain-api.specs.game-response-offers-inner :refer :all]
            [game-brain-api.specs.game-response-official-stores-inner :refer :all]
            )
  (:import (java.io File)))


(def game-response-data
  {
   (ds/opt :id) int?
   (ds/opt :name) string?
   (ds/opt :image) string?
   (ds/opt :gameplay) string?
   (ds/opt :link) string?
   (ds/opt :x_url) string?
   (ds/opt :rating) game-response-rating-spec
   (ds/opt :description) string?
   (ds/opt :short_description) string?
   (ds/opt :release_date) inst?
   (ds/opt :developer) string?
   (ds/opt :playtime) game-response-playtime-spec
   (ds/opt :platforms) (s/coll-of game-response-platforms-inner-spec)
   (ds/opt :tags) (s/coll-of string?)
   (ds/opt :genres) (s/coll-of game-response-platforms-inner-spec)
   (ds/opt :genre) string?
   (ds/opt :themes) (s/coll-of game-response-platforms-inner-spec)
   (ds/opt :adult_only) boolean?
   (ds/opt :play_modes) (s/coll-of game-response-platforms-inner-spec)
   (ds/opt :screenshots) (s/coll-of string?)
   (ds/opt :videos) (s/coll-of string?)
   (ds/opt :offers) (s/coll-of game-response-offers-inner-spec)
   (ds/opt :official_stores) (s/coll-of game-response-official-stores-inner-spec)
   (ds/opt :micro_trailer) string?
   })

(def game-response-spec
  (ds/spec
    {:name ::game-response
     :spec game-response-data}))
