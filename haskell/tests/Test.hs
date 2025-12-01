{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE PartialTypeSignatures #-}

module Main where

import Data.Typeable (Proxy(..))
import Test.Hspec
import Test.Hspec.QuickCheck

import PropMime
import Instances ()

import GameBrain.Model
import GameBrain.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 10) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy GameNewsItem)
      propMimeEq MimeJSON (Proxy :: Proxy GameNewsResponse)
      propMimeEq MimeJSON (Proxy :: Proxy GameResponse)
      propMimeEq MimeJSON (Proxy :: Proxy GameResponseOffersInner)
      propMimeEq MimeJSON (Proxy :: Proxy GameResponseOffersInnerPrice)
      propMimeEq MimeJSON (Proxy :: Proxy GameResponseOfficialStoresInner)
      propMimeEq MimeJSON (Proxy :: Proxy GameResponsePlatformsInner)
      propMimeEq MimeJSON (Proxy :: Proxy GameResponsePlaytime)
      propMimeEq MimeJSON (Proxy :: Proxy GameResponseRating)
      propMimeEq MimeJSON (Proxy :: Proxy SearchResponse)
      propMimeEq MimeJSON (Proxy :: Proxy SearchResponseActiveFilterOptionsInner)
      propMimeEq MimeJSON (Proxy :: Proxy SearchResponseActiveFilterOptionsInnerValuesInner)
      propMimeEq MimeJSON (Proxy :: Proxy SearchResponseFilterOptionsInner)
      propMimeEq MimeJSON (Proxy :: Proxy SearchResponseFilterOptionsInnerValuesInner)
      propMimeEq MimeJSON (Proxy :: Proxy SearchResponseResultsInner)
      propMimeEq MimeJSON (Proxy :: Proxy SearchResponseResultsInnerRating)
      propMimeEq MimeJSON (Proxy :: Proxy SearchResponseSorting)
      propMimeEq MimeJSON (Proxy :: Proxy SearchResponseSortingOptionsInner)
      propMimeEq MimeJSON (Proxy :: Proxy SearchSuggestionResponse)
      propMimeEq MimeJSON (Proxy :: Proxy SearchSuggestionResponseResultsInner)
      propMimeEq MimeJSON (Proxy :: Proxy SimilarGamesResponse)
      
