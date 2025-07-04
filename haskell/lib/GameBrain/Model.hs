{-
   GameBrain API

   GameBrain API

   OpenAPI Version: 3.0.0
   GameBrain API API version: 1.0.1
   Contact: mail@gamebrain.co
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : GameBrain.Model
-}

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveFoldable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-matches -fno-warn-unused-binds -fno-warn-unused-imports #-}

module GameBrain.Model where

import GameBrain.Core
import GameBrain.MimeTypes

import Data.Aeson ((.:),(.:!),(.:?),(.=))

import qualified Control.Arrow as P (left)
import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Base64 as B64
import qualified Data.ByteString.Char8 as BC
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.HashMap.Lazy as HM
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Time as TI
import qualified Lens.Micro as L
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Control.Applicative ((<|>))
import Control.Applicative (Alternative)
import Data.Function ((&))
import Data.Monoid ((<>))
import Data.Text (Text)
import Prelude (($),(/=),(.),(<$>),(<*>),(>>=),(=<<),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)

import qualified Prelude as P



-- * Parameter newtypes


-- ** ApiKey
newtype ApiKey = ApiKey { unApiKey :: Text } deriving (P.Eq, P.Show)

-- ** Filters
newtype Filters = Filters { unFilters :: Text } deriving (P.Eq, P.Show)

-- ** GenerateFilterOptions
newtype GenerateFilterOptions = GenerateFilterOptions { unGenerateFilterOptions :: Bool } deriving (P.Eq, P.Show)

-- ** Id
newtype Id = Id { unId :: Int } deriving (P.Eq, P.Show)

-- ** Limit
newtype Limit = Limit { unLimit :: Int } deriving (P.Eq, P.Show)

-- ** Offset
newtype Offset = Offset { unOffset :: Int } deriving (P.Eq, P.Show)

-- ** Query
newtype Query = Query { unQuery :: Text } deriving (P.Eq, P.Show)

-- ** Sort
newtype Sort = Sort { unSort :: Text } deriving (P.Eq, P.Show)

-- ** SortOrder
newtype SortOrder = SortOrder { unSortOrder :: Text } deriving (P.Eq, P.Show)

-- * Models


-- ** GameResponse
-- | GameResponse
data GameResponse = GameResponse
  { gameResponseId :: !(Maybe Int) -- ^ "id"
  , gameResponseName :: !(Maybe Text) -- ^ "name"
  , gameResponseImage :: !(Maybe Text) -- ^ "image"
  , gameResponseGameplay :: !(Maybe Text) -- ^ "gameplay"
  , gameResponseLink :: !(Maybe Text) -- ^ "link"
  , gameResponseXUrl :: !(Maybe Text) -- ^ "x_url"
  , gameResponseRating :: !(Maybe GameResponseRating) -- ^ "rating"
  , gameResponseDescription :: !(Maybe Text) -- ^ "description"
  , gameResponseShortDescription :: !(Maybe Text) -- ^ "short_description"
  , gameResponseReleaseDate :: !(Maybe Date) -- ^ "release_date"
  , gameResponseDeveloper :: !(Maybe Text) -- ^ "developer"
  , gameResponsePlaytime :: !(Maybe GameResponsePlaytime) -- ^ "playtime"
  , gameResponsePlatforms :: !(Maybe [GameResponsePlatformsInner]) -- ^ "platforms"
  , gameResponseTags :: !(Maybe [Text]) -- ^ "tags"
  , gameResponseGenres :: !(Maybe [GameResponsePlatformsInner]) -- ^ "genres"
  , gameResponseGenre :: !(Maybe Text) -- ^ "genre"
  , gameResponseThemes :: !(Maybe [GameResponsePlatformsInner]) -- ^ "themes"
  , gameResponseAdultOnly :: !(Maybe Bool) -- ^ "adult_only"
  , gameResponsePlayModes :: !(Maybe [GameResponsePlatformsInner]) -- ^ "play_modes"
  , gameResponseScreenshots :: !(Maybe [Text]) -- ^ "screenshots"
  , gameResponseVideos :: !(Maybe [Text]) -- ^ "videos"
  , gameResponseOffers :: !(Maybe [GameResponseOffersInner]) -- ^ "offers"
  , gameResponseOfficialStores :: !(Maybe [GameResponseOfficialStoresInner]) -- ^ "official_stores"
  , gameResponseMicroTrailer :: !(Maybe Text) -- ^ "micro_trailer"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON GameResponse
instance A.FromJSON GameResponse where
  parseJSON = A.withObject "GameResponse" $ \o ->
    GameResponse
      <$> (o .:? "id")
      <*> (o .:? "name")
      <*> (o .:? "image")
      <*> (o .:? "gameplay")
      <*> (o .:? "link")
      <*> (o .:? "x_url")
      <*> (o .:? "rating")
      <*> (o .:? "description")
      <*> (o .:? "short_description")
      <*> (o .:? "release_date")
      <*> (o .:? "developer")
      <*> (o .:? "playtime")
      <*> (o .:? "platforms")
      <*> (o .:? "tags")
      <*> (o .:? "genres")
      <*> (o .:? "genre")
      <*> (o .:? "themes")
      <*> (o .:? "adult_only")
      <*> (o .:? "play_modes")
      <*> (o .:? "screenshots")
      <*> (o .:? "videos")
      <*> (o .:? "offers")
      <*> (o .:? "official_stores")
      <*> (o .:? "micro_trailer")

-- | ToJSON GameResponse
instance A.ToJSON GameResponse where
  toJSON GameResponse {..} =
   _omitNulls
      [ "id" .= gameResponseId
      , "name" .= gameResponseName
      , "image" .= gameResponseImage
      , "gameplay" .= gameResponseGameplay
      , "link" .= gameResponseLink
      , "x_url" .= gameResponseXUrl
      , "rating" .= gameResponseRating
      , "description" .= gameResponseDescription
      , "short_description" .= gameResponseShortDescription
      , "release_date" .= gameResponseReleaseDate
      , "developer" .= gameResponseDeveloper
      , "playtime" .= gameResponsePlaytime
      , "platforms" .= gameResponsePlatforms
      , "tags" .= gameResponseTags
      , "genres" .= gameResponseGenres
      , "genre" .= gameResponseGenre
      , "themes" .= gameResponseThemes
      , "adult_only" .= gameResponseAdultOnly
      , "play_modes" .= gameResponsePlayModes
      , "screenshots" .= gameResponseScreenshots
      , "videos" .= gameResponseVideos
      , "offers" .= gameResponseOffers
      , "official_stores" .= gameResponseOfficialStores
      , "micro_trailer" .= gameResponseMicroTrailer
      ]


-- | Construct a value of type 'GameResponse' (by applying it's required fields, if any)
mkGameResponse
  :: GameResponse
mkGameResponse =
  GameResponse
  { gameResponseId = Nothing
  , gameResponseName = Nothing
  , gameResponseImage = Nothing
  , gameResponseGameplay = Nothing
  , gameResponseLink = Nothing
  , gameResponseXUrl = Nothing
  , gameResponseRating = Nothing
  , gameResponseDescription = Nothing
  , gameResponseShortDescription = Nothing
  , gameResponseReleaseDate = Nothing
  , gameResponseDeveloper = Nothing
  , gameResponsePlaytime = Nothing
  , gameResponsePlatforms = Nothing
  , gameResponseTags = Nothing
  , gameResponseGenres = Nothing
  , gameResponseGenre = Nothing
  , gameResponseThemes = Nothing
  , gameResponseAdultOnly = Nothing
  , gameResponsePlayModes = Nothing
  , gameResponseScreenshots = Nothing
  , gameResponseVideos = Nothing
  , gameResponseOffers = Nothing
  , gameResponseOfficialStores = Nothing
  , gameResponseMicroTrailer = Nothing
  }

-- ** GameResponseOffersInner
-- | GameResponseOffersInner
data GameResponseOffersInner = GameResponseOffersInner
  { gameResponseOffersInnerPrice :: !(Maybe GameResponseOffersInnerPrice) -- ^ "price"
  , gameResponseOffersInnerStoreName :: !(Maybe Text) -- ^ "store_name"
  , gameResponseOffersInnerPlatform :: !(Maybe Text) -- ^ "platform"
  , gameResponseOffersInnerTitle :: !(Maybe Text) -- ^ "title"
  , gameResponseOffersInnerUrl :: !(Maybe Text) -- ^ "url"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON GameResponseOffersInner
instance A.FromJSON GameResponseOffersInner where
  parseJSON = A.withObject "GameResponseOffersInner" $ \o ->
    GameResponseOffersInner
      <$> (o .:? "price")
      <*> (o .:? "store_name")
      <*> (o .:? "platform")
      <*> (o .:? "title")
      <*> (o .:? "url")

-- | ToJSON GameResponseOffersInner
instance A.ToJSON GameResponseOffersInner where
  toJSON GameResponseOffersInner {..} =
   _omitNulls
      [ "price" .= gameResponseOffersInnerPrice
      , "store_name" .= gameResponseOffersInnerStoreName
      , "platform" .= gameResponseOffersInnerPlatform
      , "title" .= gameResponseOffersInnerTitle
      , "url" .= gameResponseOffersInnerUrl
      ]


-- | Construct a value of type 'GameResponseOffersInner' (by applying it's required fields, if any)
mkGameResponseOffersInner
  :: GameResponseOffersInner
mkGameResponseOffersInner =
  GameResponseOffersInner
  { gameResponseOffersInnerPrice = Nothing
  , gameResponseOffersInnerStoreName = Nothing
  , gameResponseOffersInnerPlatform = Nothing
  , gameResponseOffersInnerTitle = Nothing
  , gameResponseOffersInnerUrl = Nothing
  }

-- ** GameResponseOffersInnerPrice
-- | GameResponseOffersInnerPrice
data GameResponseOffersInnerPrice = GameResponseOffersInnerPrice
  { gameResponseOffersInnerPriceCurrency :: !(Maybe Text) -- ^ "currency"
  , gameResponseOffersInnerPriceDiscountPercent :: !(Maybe Float) -- ^ "discount_percent"
  , gameResponseOffersInnerPriceValue :: !(Maybe Float) -- ^ "value"
  , gameResponseOffersInnerPriceInitial :: !(Maybe Float) -- ^ "initial"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON GameResponseOffersInnerPrice
instance A.FromJSON GameResponseOffersInnerPrice where
  parseJSON = A.withObject "GameResponseOffersInnerPrice" $ \o ->
    GameResponseOffersInnerPrice
      <$> (o .:? "currency")
      <*> (o .:? "discount_percent")
      <*> (o .:? "value")
      <*> (o .:? "initial")

-- | ToJSON GameResponseOffersInnerPrice
instance A.ToJSON GameResponseOffersInnerPrice where
  toJSON GameResponseOffersInnerPrice {..} =
   _omitNulls
      [ "currency" .= gameResponseOffersInnerPriceCurrency
      , "discount_percent" .= gameResponseOffersInnerPriceDiscountPercent
      , "value" .= gameResponseOffersInnerPriceValue
      , "initial" .= gameResponseOffersInnerPriceInitial
      ]


-- | Construct a value of type 'GameResponseOffersInnerPrice' (by applying it's required fields, if any)
mkGameResponseOffersInnerPrice
  :: GameResponseOffersInnerPrice
mkGameResponseOffersInnerPrice =
  GameResponseOffersInnerPrice
  { gameResponseOffersInnerPriceCurrency = Nothing
  , gameResponseOffersInnerPriceDiscountPercent = Nothing
  , gameResponseOffersInnerPriceValue = Nothing
  , gameResponseOffersInnerPriceInitial = Nothing
  }

-- ** GameResponseOfficialStoresInner
-- | GameResponseOfficialStoresInner
data GameResponseOfficialStoresInner = GameResponseOfficialStoresInner
  { gameResponseOfficialStoresInnerSource :: !(Maybe Text) -- ^ "source"
  , gameResponseOfficialStoresInnerUrl :: !(Maybe Text) -- ^ "url"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON GameResponseOfficialStoresInner
instance A.FromJSON GameResponseOfficialStoresInner where
  parseJSON = A.withObject "GameResponseOfficialStoresInner" $ \o ->
    GameResponseOfficialStoresInner
      <$> (o .:? "source")
      <*> (o .:? "url")

-- | ToJSON GameResponseOfficialStoresInner
instance A.ToJSON GameResponseOfficialStoresInner where
  toJSON GameResponseOfficialStoresInner {..} =
   _omitNulls
      [ "source" .= gameResponseOfficialStoresInnerSource
      , "url" .= gameResponseOfficialStoresInnerUrl
      ]


-- | Construct a value of type 'GameResponseOfficialStoresInner' (by applying it's required fields, if any)
mkGameResponseOfficialStoresInner
  :: GameResponseOfficialStoresInner
mkGameResponseOfficialStoresInner =
  GameResponseOfficialStoresInner
  { gameResponseOfficialStoresInnerSource = Nothing
  , gameResponseOfficialStoresInnerUrl = Nothing
  }

-- ** GameResponsePlatformsInner
-- | GameResponsePlatformsInner
data GameResponsePlatformsInner = GameResponsePlatformsInner
  { gameResponsePlatformsInnerValue :: !(Maybe Text) -- ^ "value"
  , gameResponsePlatformsInnerName :: !(Maybe Text) -- ^ "name"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON GameResponsePlatformsInner
instance A.FromJSON GameResponsePlatformsInner where
  parseJSON = A.withObject "GameResponsePlatformsInner" $ \o ->
    GameResponsePlatformsInner
      <$> (o .:? "value")
      <*> (o .:? "name")

-- | ToJSON GameResponsePlatformsInner
instance A.ToJSON GameResponsePlatformsInner where
  toJSON GameResponsePlatformsInner {..} =
   _omitNulls
      [ "value" .= gameResponsePlatformsInnerValue
      , "name" .= gameResponsePlatformsInnerName
      ]


-- | Construct a value of type 'GameResponsePlatformsInner' (by applying it's required fields, if any)
mkGameResponsePlatformsInner
  :: GameResponsePlatformsInner
mkGameResponsePlatformsInner =
  GameResponsePlatformsInner
  { gameResponsePlatformsInnerValue = Nothing
  , gameResponsePlatformsInnerName = Nothing
  }

-- ** GameResponsePlaytime
-- | GameResponsePlaytime
data GameResponsePlaytime = GameResponsePlaytime
  { gameResponsePlaytimePercentiles :: !(Maybe [Int]) -- ^ "percentiles"
  , gameResponsePlaytimeMin :: !(Maybe Int) -- ^ "min"
  , gameResponsePlaytimeMedian :: !(Maybe Int) -- ^ "median"
  , gameResponsePlaytimeMax :: !(Maybe Int) -- ^ "max"
  , gameResponsePlaytimeMean :: !(Maybe Float) -- ^ "mean"
  , gameResponsePlaytimeMentions :: !(Maybe Int) -- ^ "mentions"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON GameResponsePlaytime
instance A.FromJSON GameResponsePlaytime where
  parseJSON = A.withObject "GameResponsePlaytime" $ \o ->
    GameResponsePlaytime
      <$> (o .:? "percentiles")
      <*> (o .:? "min")
      <*> (o .:? "median")
      <*> (o .:? "max")
      <*> (o .:? "mean")
      <*> (o .:? "mentions")

-- | ToJSON GameResponsePlaytime
instance A.ToJSON GameResponsePlaytime where
  toJSON GameResponsePlaytime {..} =
   _omitNulls
      [ "percentiles" .= gameResponsePlaytimePercentiles
      , "min" .= gameResponsePlaytimeMin
      , "median" .= gameResponsePlaytimeMedian
      , "max" .= gameResponsePlaytimeMax
      , "mean" .= gameResponsePlaytimeMean
      , "mentions" .= gameResponsePlaytimeMentions
      ]


-- | Construct a value of type 'GameResponsePlaytime' (by applying it's required fields, if any)
mkGameResponsePlaytime
  :: GameResponsePlaytime
mkGameResponsePlaytime =
  GameResponsePlaytime
  { gameResponsePlaytimePercentiles = Nothing
  , gameResponsePlaytimeMin = Nothing
  , gameResponsePlaytimeMedian = Nothing
  , gameResponsePlaytimeMax = Nothing
  , gameResponsePlaytimeMean = Nothing
  , gameResponsePlaytimeMentions = Nothing
  }

-- ** GameResponseRating
-- | GameResponseRating
data GameResponseRating = GameResponseRating
  { gameResponseRatingMean :: !(Maybe Float) -- ^ "mean"
  , gameResponseRatingCount :: !(Maybe Int) -- ^ "count"
  , gameResponseRatingMeanPlayers :: !(Maybe Float) -- ^ "mean_players"
  , gameResponseRatingCountPlayers :: !(Maybe Int) -- ^ "count_players"
  , gameResponseRatingMeanCritics :: !(Maybe Float) -- ^ "mean_critics"
  , gameResponseRatingCountCritics :: !(Maybe Int) -- ^ "count_critics"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON GameResponseRating
instance A.FromJSON GameResponseRating where
  parseJSON = A.withObject "GameResponseRating" $ \o ->
    GameResponseRating
      <$> (o .:? "mean")
      <*> (o .:? "count")
      <*> (o .:? "mean_players")
      <*> (o .:? "count_players")
      <*> (o .:? "mean_critics")
      <*> (o .:? "count_critics")

-- | ToJSON GameResponseRating
instance A.ToJSON GameResponseRating where
  toJSON GameResponseRating {..} =
   _omitNulls
      [ "mean" .= gameResponseRatingMean
      , "count" .= gameResponseRatingCount
      , "mean_players" .= gameResponseRatingMeanPlayers
      , "count_players" .= gameResponseRatingCountPlayers
      , "mean_critics" .= gameResponseRatingMeanCritics
      , "count_critics" .= gameResponseRatingCountCritics
      ]


-- | Construct a value of type 'GameResponseRating' (by applying it's required fields, if any)
mkGameResponseRating
  :: GameResponseRating
mkGameResponseRating =
  GameResponseRating
  { gameResponseRatingMean = Nothing
  , gameResponseRatingCount = Nothing
  , gameResponseRatingMeanPlayers = Nothing
  , gameResponseRatingCountPlayers = Nothing
  , gameResponseRatingMeanCritics = Nothing
  , gameResponseRatingCountCritics = Nothing
  }

-- ** SearchResponse
-- | SearchResponse
data SearchResponse = SearchResponse
  { searchResponseSorting :: !(Maybe SearchResponseSorting) -- ^ "sorting"
  , searchResponseActiveFilterOptions :: !(Maybe [SearchResponseActiveFilterOptionsInner]) -- ^ "active_filter_options"
  , searchResponseQuery :: !(Maybe Text) -- ^ "query"
  , searchResponseTotalResults :: !(Maybe Int) -- ^ "total_results"
  , searchResponseLimit :: !(Maybe Int) -- ^ "limit"
  , searchResponseOffset :: !(Maybe Int) -- ^ "offset"
  , searchResponseResults :: !(Maybe [SearchResponseResultsInner]) -- ^ "results"
  , searchResponseFilterOptions :: !(Maybe [SearchResponseFilterOptionsInner]) -- ^ "filter_options"
  , searchResponseSortingOptions :: !(Maybe [SearchResponseSortingOptionsInner]) -- ^ "sorting_options"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON SearchResponse
instance A.FromJSON SearchResponse where
  parseJSON = A.withObject "SearchResponse" $ \o ->
    SearchResponse
      <$> (o .:? "sorting")
      <*> (o .:? "active_filter_options")
      <*> (o .:? "query")
      <*> (o .:? "total_results")
      <*> (o .:? "limit")
      <*> (o .:? "offset")
      <*> (o .:? "results")
      <*> (o .:? "filter_options")
      <*> (o .:? "sorting_options")

-- | ToJSON SearchResponse
instance A.ToJSON SearchResponse where
  toJSON SearchResponse {..} =
   _omitNulls
      [ "sorting" .= searchResponseSorting
      , "active_filter_options" .= searchResponseActiveFilterOptions
      , "query" .= searchResponseQuery
      , "total_results" .= searchResponseTotalResults
      , "limit" .= searchResponseLimit
      , "offset" .= searchResponseOffset
      , "results" .= searchResponseResults
      , "filter_options" .= searchResponseFilterOptions
      , "sorting_options" .= searchResponseSortingOptions
      ]


-- | Construct a value of type 'SearchResponse' (by applying it's required fields, if any)
mkSearchResponse
  :: SearchResponse
mkSearchResponse =
  SearchResponse
  { searchResponseSorting = Nothing
  , searchResponseActiveFilterOptions = Nothing
  , searchResponseQuery = Nothing
  , searchResponseTotalResults = Nothing
  , searchResponseLimit = Nothing
  , searchResponseOffset = Nothing
  , searchResponseResults = Nothing
  , searchResponseFilterOptions = Nothing
  , searchResponseSortingOptions = Nothing
  }

-- ** SearchResponseActiveFilterOptionsInner
-- | SearchResponseActiveFilterOptionsInner
data SearchResponseActiveFilterOptionsInner = SearchResponseActiveFilterOptionsInner
  { searchResponseActiveFilterOptionsInnerKey :: !(Maybe Text) -- ^ "key"
  , searchResponseActiveFilterOptionsInnerConnection :: !(Maybe Text) -- ^ "connection"
  , searchResponseActiveFilterOptionsInnerValues :: !(Maybe [SearchResponseActiveFilterOptionsInnerValuesInner]) -- ^ "values"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON SearchResponseActiveFilterOptionsInner
instance A.FromJSON SearchResponseActiveFilterOptionsInner where
  parseJSON = A.withObject "SearchResponseActiveFilterOptionsInner" $ \o ->
    SearchResponseActiveFilterOptionsInner
      <$> (o .:? "key")
      <*> (o .:? "connection")
      <*> (o .:? "values")

-- | ToJSON SearchResponseActiveFilterOptionsInner
instance A.ToJSON SearchResponseActiveFilterOptionsInner where
  toJSON SearchResponseActiveFilterOptionsInner {..} =
   _omitNulls
      [ "key" .= searchResponseActiveFilterOptionsInnerKey
      , "connection" .= searchResponseActiveFilterOptionsInnerConnection
      , "values" .= searchResponseActiveFilterOptionsInnerValues
      ]


-- | Construct a value of type 'SearchResponseActiveFilterOptionsInner' (by applying it's required fields, if any)
mkSearchResponseActiveFilterOptionsInner
  :: SearchResponseActiveFilterOptionsInner
mkSearchResponseActiveFilterOptionsInner =
  SearchResponseActiveFilterOptionsInner
  { searchResponseActiveFilterOptionsInnerKey = Nothing
  , searchResponseActiveFilterOptionsInnerConnection = Nothing
  , searchResponseActiveFilterOptionsInnerValues = Nothing
  }

-- ** SearchResponseActiveFilterOptionsInnerValuesInner
-- | SearchResponseActiveFilterOptionsInnerValuesInner
data SearchResponseActiveFilterOptionsInnerValuesInner = SearchResponseActiveFilterOptionsInnerValuesInner
  { searchResponseActiveFilterOptionsInnerValuesInnerMatch :: !(Maybe Text) -- ^ "match"
  , searchResponseActiveFilterOptionsInnerValuesInnerValue :: !(Maybe Text) -- ^ "value"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON SearchResponseActiveFilterOptionsInnerValuesInner
instance A.FromJSON SearchResponseActiveFilterOptionsInnerValuesInner where
  parseJSON = A.withObject "SearchResponseActiveFilterOptionsInnerValuesInner" $ \o ->
    SearchResponseActiveFilterOptionsInnerValuesInner
      <$> (o .:? "match")
      <*> (o .:? "value")

-- | ToJSON SearchResponseActiveFilterOptionsInnerValuesInner
instance A.ToJSON SearchResponseActiveFilterOptionsInnerValuesInner where
  toJSON SearchResponseActiveFilterOptionsInnerValuesInner {..} =
   _omitNulls
      [ "match" .= searchResponseActiveFilterOptionsInnerValuesInnerMatch
      , "value" .= searchResponseActiveFilterOptionsInnerValuesInnerValue
      ]


-- | Construct a value of type 'SearchResponseActiveFilterOptionsInnerValuesInner' (by applying it's required fields, if any)
mkSearchResponseActiveFilterOptionsInnerValuesInner
  :: SearchResponseActiveFilterOptionsInnerValuesInner
mkSearchResponseActiveFilterOptionsInnerValuesInner =
  SearchResponseActiveFilterOptionsInnerValuesInner
  { searchResponseActiveFilterOptionsInnerValuesInnerMatch = Nothing
  , searchResponseActiveFilterOptionsInnerValuesInnerValue = Nothing
  }

-- ** SearchResponseFilterOptionsInner
-- | SearchResponseFilterOptionsInner
data SearchResponseFilterOptionsInner = SearchResponseFilterOptionsInner
  { searchResponseFilterOptionsInnerName :: !(Maybe Text) -- ^ "name"
  , searchResponseFilterOptionsInnerKey :: !(Maybe Text) -- ^ "key"
  , searchResponseFilterOptionsInnerValues :: !(Maybe [SearchResponseFilterOptionsInnerValuesInner]) -- ^ "values"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON SearchResponseFilterOptionsInner
instance A.FromJSON SearchResponseFilterOptionsInner where
  parseJSON = A.withObject "SearchResponseFilterOptionsInner" $ \o ->
    SearchResponseFilterOptionsInner
      <$> (o .:? "name")
      <*> (o .:? "key")
      <*> (o .:? "values")

-- | ToJSON SearchResponseFilterOptionsInner
instance A.ToJSON SearchResponseFilterOptionsInner where
  toJSON SearchResponseFilterOptionsInner {..} =
   _omitNulls
      [ "name" .= searchResponseFilterOptionsInnerName
      , "key" .= searchResponseFilterOptionsInnerKey
      , "values" .= searchResponseFilterOptionsInnerValues
      ]


-- | Construct a value of type 'SearchResponseFilterOptionsInner' (by applying it's required fields, if any)
mkSearchResponseFilterOptionsInner
  :: SearchResponseFilterOptionsInner
mkSearchResponseFilterOptionsInner =
  SearchResponseFilterOptionsInner
  { searchResponseFilterOptionsInnerName = Nothing
  , searchResponseFilterOptionsInnerKey = Nothing
  , searchResponseFilterOptionsInnerValues = Nothing
  }

-- ** SearchResponseFilterOptionsInnerValuesInner
-- | SearchResponseFilterOptionsInnerValuesInner
data SearchResponseFilterOptionsInnerValuesInner = SearchResponseFilterOptionsInnerValuesInner
  { searchResponseFilterOptionsInnerValuesInnerName :: !(Maybe Text) -- ^ "name"
  , searchResponseFilterOptionsInnerValuesInnerKey :: !(Maybe Text) -- ^ "key"
  , searchResponseFilterOptionsInnerValuesInnerCount :: !(Maybe Double) -- ^ "count"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON SearchResponseFilterOptionsInnerValuesInner
instance A.FromJSON SearchResponseFilterOptionsInnerValuesInner where
  parseJSON = A.withObject "SearchResponseFilterOptionsInnerValuesInner" $ \o ->
    SearchResponseFilterOptionsInnerValuesInner
      <$> (o .:? "name")
      <*> (o .:? "key")
      <*> (o .:? "count")

-- | ToJSON SearchResponseFilterOptionsInnerValuesInner
instance A.ToJSON SearchResponseFilterOptionsInnerValuesInner where
  toJSON SearchResponseFilterOptionsInnerValuesInner {..} =
   _omitNulls
      [ "name" .= searchResponseFilterOptionsInnerValuesInnerName
      , "key" .= searchResponseFilterOptionsInnerValuesInnerKey
      , "count" .= searchResponseFilterOptionsInnerValuesInnerCount
      ]


-- | Construct a value of type 'SearchResponseFilterOptionsInnerValuesInner' (by applying it's required fields, if any)
mkSearchResponseFilterOptionsInnerValuesInner
  :: SearchResponseFilterOptionsInnerValuesInner
mkSearchResponseFilterOptionsInnerValuesInner =
  SearchResponseFilterOptionsInnerValuesInner
  { searchResponseFilterOptionsInnerValuesInnerName = Nothing
  , searchResponseFilterOptionsInnerValuesInnerKey = Nothing
  , searchResponseFilterOptionsInnerValuesInnerCount = Nothing
  }

-- ** SearchResponseResultsInner
-- | SearchResponseResultsInner
data SearchResponseResultsInner = SearchResponseResultsInner
  { searchResponseResultsInnerId :: !(Maybe Int) -- ^ "id"
  , searchResponseResultsInnerYear :: !(Maybe Double) -- ^ "year"
  , searchResponseResultsInnerName :: !(Maybe Text) -- ^ "name"
  , searchResponseResultsInnerGenre :: !(Maybe Text) -- ^ "genre"
  , searchResponseResultsInnerImage :: !(Maybe Text) -- ^ "image"
  , searchResponseResultsInnerLink :: !(Maybe Text) -- ^ "link"
  , searchResponseResultsInnerRating :: !(Maybe SearchResponseResultsInnerRating) -- ^ "rating"
  , searchResponseResultsInnerAdultOnly :: !(Maybe Bool) -- ^ "adult_only"
  , searchResponseResultsInnerScreenshots :: !(Maybe [Text]) -- ^ "screenshots"
  , searchResponseResultsInnerMicroTrailer :: !(Maybe Text) -- ^ "micro_trailer"
  , searchResponseResultsInnerGameplay :: !(Maybe Text) -- ^ "gameplay"
  , searchResponseResultsInnerShortDescription :: !(Maybe Text) -- ^ "short_description"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON SearchResponseResultsInner
instance A.FromJSON SearchResponseResultsInner where
  parseJSON = A.withObject "SearchResponseResultsInner" $ \o ->
    SearchResponseResultsInner
      <$> (o .:? "id")
      <*> (o .:? "year")
      <*> (o .:? "name")
      <*> (o .:? "genre")
      <*> (o .:? "image")
      <*> (o .:? "link")
      <*> (o .:? "rating")
      <*> (o .:? "adult_only")
      <*> (o .:? "screenshots")
      <*> (o .:? "micro_trailer")
      <*> (o .:? "gameplay")
      <*> (o .:? "short_description")

-- | ToJSON SearchResponseResultsInner
instance A.ToJSON SearchResponseResultsInner where
  toJSON SearchResponseResultsInner {..} =
   _omitNulls
      [ "id" .= searchResponseResultsInnerId
      , "year" .= searchResponseResultsInnerYear
      , "name" .= searchResponseResultsInnerName
      , "genre" .= searchResponseResultsInnerGenre
      , "image" .= searchResponseResultsInnerImage
      , "link" .= searchResponseResultsInnerLink
      , "rating" .= searchResponseResultsInnerRating
      , "adult_only" .= searchResponseResultsInnerAdultOnly
      , "screenshots" .= searchResponseResultsInnerScreenshots
      , "micro_trailer" .= searchResponseResultsInnerMicroTrailer
      , "gameplay" .= searchResponseResultsInnerGameplay
      , "short_description" .= searchResponseResultsInnerShortDescription
      ]


-- | Construct a value of type 'SearchResponseResultsInner' (by applying it's required fields, if any)
mkSearchResponseResultsInner
  :: SearchResponseResultsInner
mkSearchResponseResultsInner =
  SearchResponseResultsInner
  { searchResponseResultsInnerId = Nothing
  , searchResponseResultsInnerYear = Nothing
  , searchResponseResultsInnerName = Nothing
  , searchResponseResultsInnerGenre = Nothing
  , searchResponseResultsInnerImage = Nothing
  , searchResponseResultsInnerLink = Nothing
  , searchResponseResultsInnerRating = Nothing
  , searchResponseResultsInnerAdultOnly = Nothing
  , searchResponseResultsInnerScreenshots = Nothing
  , searchResponseResultsInnerMicroTrailer = Nothing
  , searchResponseResultsInnerGameplay = Nothing
  , searchResponseResultsInnerShortDescription = Nothing
  }

-- ** SearchResponseResultsInnerRating
-- | SearchResponseResultsInnerRating
data SearchResponseResultsInnerRating = SearchResponseResultsInnerRating
  { searchResponseResultsInnerRatingMean :: !(Maybe Double) -- ^ "mean"
  , searchResponseResultsInnerRatingCount :: !(Maybe Double) -- ^ "count"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON SearchResponseResultsInnerRating
instance A.FromJSON SearchResponseResultsInnerRating where
  parseJSON = A.withObject "SearchResponseResultsInnerRating" $ \o ->
    SearchResponseResultsInnerRating
      <$> (o .:? "mean")
      <*> (o .:? "count")

-- | ToJSON SearchResponseResultsInnerRating
instance A.ToJSON SearchResponseResultsInnerRating where
  toJSON SearchResponseResultsInnerRating {..} =
   _omitNulls
      [ "mean" .= searchResponseResultsInnerRatingMean
      , "count" .= searchResponseResultsInnerRatingCount
      ]


-- | Construct a value of type 'SearchResponseResultsInnerRating' (by applying it's required fields, if any)
mkSearchResponseResultsInnerRating
  :: SearchResponseResultsInnerRating
mkSearchResponseResultsInnerRating =
  SearchResponseResultsInnerRating
  { searchResponseResultsInnerRatingMean = Nothing
  , searchResponseResultsInnerRatingCount = Nothing
  }

-- ** SearchResponseSorting
-- | SearchResponseSorting
data SearchResponseSorting = SearchResponseSorting
  { searchResponseSortingKey :: !(Maybe Text) -- ^ "key"
  , searchResponseSortingDirection :: !(Maybe Text) -- ^ "direction"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON SearchResponseSorting
instance A.FromJSON SearchResponseSorting where
  parseJSON = A.withObject "SearchResponseSorting" $ \o ->
    SearchResponseSorting
      <$> (o .:? "key")
      <*> (o .:? "direction")

-- | ToJSON SearchResponseSorting
instance A.ToJSON SearchResponseSorting where
  toJSON SearchResponseSorting {..} =
   _omitNulls
      [ "key" .= searchResponseSortingKey
      , "direction" .= searchResponseSortingDirection
      ]


-- | Construct a value of type 'SearchResponseSorting' (by applying it's required fields, if any)
mkSearchResponseSorting
  :: SearchResponseSorting
mkSearchResponseSorting =
  SearchResponseSorting
  { searchResponseSortingKey = Nothing
  , searchResponseSortingDirection = Nothing
  }

-- ** SearchResponseSortingOptionsInner
-- | SearchResponseSortingOptionsInner
data SearchResponseSortingOptionsInner = SearchResponseSortingOptionsInner
  { searchResponseSortingOptionsInnerName :: !(Maybe Text) -- ^ "name"
  , searchResponseSortingOptionsInnerSort :: !(Maybe Text) -- ^ "sort"
  , searchResponseSortingOptionsInnerKey :: !(Maybe Text) -- ^ "key"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON SearchResponseSortingOptionsInner
instance A.FromJSON SearchResponseSortingOptionsInner where
  parseJSON = A.withObject "SearchResponseSortingOptionsInner" $ \o ->
    SearchResponseSortingOptionsInner
      <$> (o .:? "name")
      <*> (o .:? "sort")
      <*> (o .:? "key")

-- | ToJSON SearchResponseSortingOptionsInner
instance A.ToJSON SearchResponseSortingOptionsInner where
  toJSON SearchResponseSortingOptionsInner {..} =
   _omitNulls
      [ "name" .= searchResponseSortingOptionsInnerName
      , "sort" .= searchResponseSortingOptionsInnerSort
      , "key" .= searchResponseSortingOptionsInnerKey
      ]


-- | Construct a value of type 'SearchResponseSortingOptionsInner' (by applying it's required fields, if any)
mkSearchResponseSortingOptionsInner
  :: SearchResponseSortingOptionsInner
mkSearchResponseSortingOptionsInner =
  SearchResponseSortingOptionsInner
  { searchResponseSortingOptionsInnerName = Nothing
  , searchResponseSortingOptionsInnerSort = Nothing
  , searchResponseSortingOptionsInnerKey = Nothing
  }

-- ** SearchSuggestionResponse
-- | SearchSuggestionResponse
data SearchSuggestionResponse = SearchSuggestionResponse
  { searchSuggestionResponseResults :: !(Maybe [SearchSuggestionResponseResultsInner]) -- ^ "results"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON SearchSuggestionResponse
instance A.FromJSON SearchSuggestionResponse where
  parseJSON = A.withObject "SearchSuggestionResponse" $ \o ->
    SearchSuggestionResponse
      <$> (o .:? "results")

-- | ToJSON SearchSuggestionResponse
instance A.ToJSON SearchSuggestionResponse where
  toJSON SearchSuggestionResponse {..} =
   _omitNulls
      [ "results" .= searchSuggestionResponseResults
      ]


-- | Construct a value of type 'SearchSuggestionResponse' (by applying it's required fields, if any)
mkSearchSuggestionResponse
  :: SearchSuggestionResponse
mkSearchSuggestionResponse =
  SearchSuggestionResponse
  { searchSuggestionResponseResults = Nothing
  }

-- ** SearchSuggestionResponseResultsInner
-- | SearchSuggestionResponseResultsInner
data SearchSuggestionResponseResultsInner = SearchSuggestionResponseResultsInner
  { searchSuggestionResponseResultsInnerId :: !(Maybe Int) -- ^ "id"
  , searchSuggestionResponseResultsInnerYear :: !(Maybe Double) -- ^ "year"
  , searchSuggestionResponseResultsInnerName :: !(Maybe Text) -- ^ "name"
  , searchSuggestionResponseResultsInnerGenre :: !(Maybe Text) -- ^ "genre"
  , searchSuggestionResponseResultsInnerImage :: !(Maybe Text) -- ^ "image"
  , searchSuggestionResponseResultsInnerLink :: !(Maybe Text) -- ^ "link"
  , searchSuggestionResponseResultsInnerRating :: !(Maybe SearchResponseResultsInnerRating) -- ^ "rating"
  , searchSuggestionResponseResultsInnerAdultOnly :: !(Maybe Bool) -- ^ "adult_only"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON SearchSuggestionResponseResultsInner
instance A.FromJSON SearchSuggestionResponseResultsInner where
  parseJSON = A.withObject "SearchSuggestionResponseResultsInner" $ \o ->
    SearchSuggestionResponseResultsInner
      <$> (o .:? "id")
      <*> (o .:? "year")
      <*> (o .:? "name")
      <*> (o .:? "genre")
      <*> (o .:? "image")
      <*> (o .:? "link")
      <*> (o .:? "rating")
      <*> (o .:? "adult_only")

-- | ToJSON SearchSuggestionResponseResultsInner
instance A.ToJSON SearchSuggestionResponseResultsInner where
  toJSON SearchSuggestionResponseResultsInner {..} =
   _omitNulls
      [ "id" .= searchSuggestionResponseResultsInnerId
      , "year" .= searchSuggestionResponseResultsInnerYear
      , "name" .= searchSuggestionResponseResultsInnerName
      , "genre" .= searchSuggestionResponseResultsInnerGenre
      , "image" .= searchSuggestionResponseResultsInnerImage
      , "link" .= searchSuggestionResponseResultsInnerLink
      , "rating" .= searchSuggestionResponseResultsInnerRating
      , "adult_only" .= searchSuggestionResponseResultsInnerAdultOnly
      ]


-- | Construct a value of type 'SearchSuggestionResponseResultsInner' (by applying it's required fields, if any)
mkSearchSuggestionResponseResultsInner
  :: SearchSuggestionResponseResultsInner
mkSearchSuggestionResponseResultsInner =
  SearchSuggestionResponseResultsInner
  { searchSuggestionResponseResultsInnerId = Nothing
  , searchSuggestionResponseResultsInnerYear = Nothing
  , searchSuggestionResponseResultsInnerName = Nothing
  , searchSuggestionResponseResultsInnerGenre = Nothing
  , searchSuggestionResponseResultsInnerImage = Nothing
  , searchSuggestionResponseResultsInnerLink = Nothing
  , searchSuggestionResponseResultsInnerRating = Nothing
  , searchSuggestionResponseResultsInnerAdultOnly = Nothing
  }

-- ** SimilarGamesResponse
-- | SimilarGamesResponse
data SimilarGamesResponse = SimilarGamesResponse
  { similarGamesResponseResults :: !(Maybe [SearchResponseResultsInner]) -- ^ "results"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON SimilarGamesResponse
instance A.FromJSON SimilarGamesResponse where
  parseJSON = A.withObject "SimilarGamesResponse" $ \o ->
    SimilarGamesResponse
      <$> (o .:? "results")

-- | ToJSON SimilarGamesResponse
instance A.ToJSON SimilarGamesResponse where
  toJSON SimilarGamesResponse {..} =
   _omitNulls
      [ "results" .= similarGamesResponseResults
      ]


-- | Construct a value of type 'SimilarGamesResponse' (by applying it's required fields, if any)
mkSimilarGamesResponse
  :: SimilarGamesResponse
mkSimilarGamesResponse =
  SimilarGamesResponse
  { similarGamesResponseResults = Nothing
  }




-- * Auth Methods

-- ** AuthApiKeyApiKey
data AuthApiKeyApiKey =
  AuthApiKeyApiKey Text -- ^ secret
  deriving (P.Eq, P.Show, P.Typeable)

instance AuthMethod AuthApiKeyApiKey where
  applyAuthMethod _ a@(AuthApiKeyApiKey secret) req =
    P.pure $
    if (P.typeOf a `P.elem` rAuthTypes req)
      then req `setQuery` toQuery ("api-key", Just secret)
           & L.over rAuthTypesL (P.filter (/= P.typeOf a))
      else req

-- ** AuthApiKeyHeaderApiKey
data AuthApiKeyHeaderApiKey =
  AuthApiKeyHeaderApiKey Text -- ^ secret
  deriving (P.Eq, P.Show, P.Typeable)

instance AuthMethod AuthApiKeyHeaderApiKey where
  applyAuthMethod _ a@(AuthApiKeyHeaderApiKey secret) req =
    P.pure $
    if (P.typeOf a `P.elem` rAuthTypes req)
      then req `setHeader` toHeader ("x-api-key", secret)
           & L.over rAuthTypesL (P.filter (/= P.typeOf a))
      else req


