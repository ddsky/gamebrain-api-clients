{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import GameBrain.Model
import GameBrain.Core

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HM
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Time as TI
import qualified Data.Vector as V
import Data.String (fromString)

import Control.Monad
import Data.Char (isSpace)
import Data.List (sort)
import Test.QuickCheck

import ApproxEq

instance Arbitrary T.Text where
  arbitrary = T.pack <$> arbitrary

instance Arbitrary TI.Day where
  arbitrary = TI.ModifiedJulianDay . (2000 +) <$> arbitrary
  shrink = (TI.ModifiedJulianDay <$>) . shrink . TI.toModifiedJulianDay

instance Arbitrary TI.UTCTime where
  arbitrary =
    TI.UTCTime <$> arbitrary <*> (TI.secondsToDiffTime <$> choose (0, 86401))

instance Arbitrary BL.ByteString where
    arbitrary = BL.pack <$> arbitrary
    shrink xs = BL.pack <$> shrink (BL.unpack xs)

instance Arbitrary ByteArray where
    arbitrary = ByteArray <$> arbitrary
    shrink (ByteArray xs) = ByteArray <$> shrink xs

instance Arbitrary Binary where
    arbitrary = Binary <$> arbitrary
    shrink (Binary xs) = Binary <$> shrink xs

instance Arbitrary DateTime where
    arbitrary = DateTime <$> arbitrary
    shrink (DateTime xs) = DateTime <$> shrink xs

instance Arbitrary Date where
    arbitrary = Date <$> arbitrary
    shrink (Date xs) = Date <$> shrink xs

#if MIN_VERSION_aeson(2,0,0)
#else
-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = arbitraryValue
#endif

arbitraryValue :: Gen A.Value
arbitraryValue =
  frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (fromString k, v)
      simpleAndArrays = frequency [(1, sized sizedArray), (4, simpleTypes)]
      arrayTypes = sized sizedArray
      objectTypes = sized sizedObject
      sizedArray n = liftM (A.Array . V.fromList) $ replicateM n simpleTypes
      sizedObject n =
        liftM (A.object . map mapF) $
        replicateM n $ (,) <$> (arbitrary :: Gen String) <*> simpleAndArrays

-- | Checks if a given list has no duplicates in _O(n log n)_.
hasNoDups
  :: (Ord a)
  => [a] -> Bool
hasNoDups = go Set.empty
  where
    go _ [] = True
    go s (x:xs)
      | s' <- Set.insert x s
      , Set.size s' > Set.size s = go s' xs
      | otherwise = False

instance ApproxEq TI.Day where
  (=~) = (==)

arbitraryReduced :: Arbitrary a => Int -> Gen a
arbitraryReduced n = resize (n `div` 2) arbitrary

arbitraryReducedMaybe :: Arbitrary a => Int -> Gen (Maybe a)
arbitraryReducedMaybe 0 = elements [Nothing]
arbitraryReducedMaybe n = arbitraryReduced n

arbitraryReducedMaybeValue :: Int -> Gen (Maybe A.Value)
arbitraryReducedMaybeValue 0 = elements [Nothing]
arbitraryReducedMaybeValue n = do
  generated <- arbitraryReduced n
  if generated == Just A.Null
    then return Nothing
    else return generated

-- * Models

instance Arbitrary GameNewsItem where
  arbitrary = sized genGameNewsItem

genGameNewsItem :: Int -> Gen GameNewsItem
genGameNewsItem n =
  GameNewsItem
    <$> arbitrary -- gameNewsItemTitle :: Text
    <*> arbitrary -- gameNewsItemUrl :: Text
    <*> arbitrary -- gameNewsItemSource :: Text
    <*> arbitraryReducedMaybe n -- gameNewsItemImage :: Maybe Text
    <*> arbitraryReduced n -- gameNewsItemPublished :: Date
  
instance Arbitrary GameNewsResponse where
  arbitrary = sized genGameNewsResponse

genGameNewsResponse :: Int -> Gen GameNewsResponse
genGameNewsResponse n =
  GameNewsResponse
    <$> arbitraryReduced n -- gameNewsResponseNews :: [GameNewsItem]
  
instance Arbitrary GameResponse where
  arbitrary = sized genGameResponse

genGameResponse :: Int -> Gen GameResponse
genGameResponse n =
  GameResponse
    <$> arbitraryReducedMaybe n -- gameResponseId :: Maybe Int
    <*> arbitraryReducedMaybe n -- gameResponseName :: Maybe Text
    <*> arbitraryReducedMaybe n -- gameResponseImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- gameResponseGameplay :: Maybe Text
    <*> arbitraryReducedMaybe n -- gameResponseLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- gameResponseXUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- gameResponseRating :: Maybe GameResponseRating
    <*> arbitraryReducedMaybe n -- gameResponseDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- gameResponseShortDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- gameResponseReleaseDate :: Maybe Date
    <*> arbitraryReducedMaybe n -- gameResponseDeveloper :: Maybe Text
    <*> arbitraryReducedMaybe n -- gameResponsePlaytime :: Maybe GameResponsePlaytime
    <*> arbitraryReducedMaybe n -- gameResponsePlatforms :: Maybe [GameResponsePlatformsInner]
    <*> arbitraryReducedMaybe n -- gameResponseTags :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- gameResponseGenres :: Maybe [GameResponsePlatformsInner]
    <*> arbitraryReducedMaybe n -- gameResponseGenre :: Maybe Text
    <*> arbitraryReducedMaybe n -- gameResponseThemes :: Maybe [GameResponsePlatformsInner]
    <*> arbitraryReducedMaybe n -- gameResponseAdultOnly :: Maybe Bool
    <*> arbitraryReducedMaybe n -- gameResponsePlayModes :: Maybe [GameResponsePlatformsInner]
    <*> arbitraryReducedMaybe n -- gameResponseScreenshots :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- gameResponseVideos :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- gameResponseOffers :: Maybe [GameResponseOffersInner]
    <*> arbitraryReducedMaybe n -- gameResponseOfficialStores :: Maybe [GameResponseOfficialStoresInner]
    <*> arbitraryReducedMaybe n -- gameResponseMicroTrailer :: Maybe Text
  
instance Arbitrary GameResponseOffersInner where
  arbitrary = sized genGameResponseOffersInner

genGameResponseOffersInner :: Int -> Gen GameResponseOffersInner
genGameResponseOffersInner n =
  GameResponseOffersInner
    <$> arbitraryReducedMaybe n -- gameResponseOffersInnerPrice :: Maybe GameResponseOffersInnerPrice
    <*> arbitraryReducedMaybe n -- gameResponseOffersInnerStoreName :: Maybe Text
    <*> arbitraryReducedMaybe n -- gameResponseOffersInnerPlatform :: Maybe Text
    <*> arbitraryReducedMaybe n -- gameResponseOffersInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- gameResponseOffersInnerUrl :: Maybe Text
  
instance Arbitrary GameResponseOffersInnerPrice where
  arbitrary = sized genGameResponseOffersInnerPrice

genGameResponseOffersInnerPrice :: Int -> Gen GameResponseOffersInnerPrice
genGameResponseOffersInnerPrice n =
  GameResponseOffersInnerPrice
    <$> arbitraryReducedMaybe n -- gameResponseOffersInnerPriceCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- gameResponseOffersInnerPriceDiscountPercent :: Maybe Float
    <*> arbitraryReducedMaybe n -- gameResponseOffersInnerPriceValue :: Maybe Float
    <*> arbitraryReducedMaybe n -- gameResponseOffersInnerPriceInitial :: Maybe Float
  
instance Arbitrary GameResponseOfficialStoresInner where
  arbitrary = sized genGameResponseOfficialStoresInner

genGameResponseOfficialStoresInner :: Int -> Gen GameResponseOfficialStoresInner
genGameResponseOfficialStoresInner n =
  GameResponseOfficialStoresInner
    <$> arbitraryReducedMaybe n -- gameResponseOfficialStoresInnerSource :: Maybe Text
    <*> arbitraryReducedMaybe n -- gameResponseOfficialStoresInnerUrl :: Maybe Text
  
instance Arbitrary GameResponsePlatformsInner where
  arbitrary = sized genGameResponsePlatformsInner

genGameResponsePlatformsInner :: Int -> Gen GameResponsePlatformsInner
genGameResponsePlatformsInner n =
  GameResponsePlatformsInner
    <$> arbitraryReducedMaybe n -- gameResponsePlatformsInnerValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- gameResponsePlatformsInnerName :: Maybe Text
  
instance Arbitrary GameResponsePlaytime where
  arbitrary = sized genGameResponsePlaytime

genGameResponsePlaytime :: Int -> Gen GameResponsePlaytime
genGameResponsePlaytime n =
  GameResponsePlaytime
    <$> arbitraryReducedMaybe n -- gameResponsePlaytimePercentiles :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- gameResponsePlaytimeMin :: Maybe Int
    <*> arbitraryReducedMaybe n -- gameResponsePlaytimeMedian :: Maybe Int
    <*> arbitraryReducedMaybe n -- gameResponsePlaytimeMax :: Maybe Int
    <*> arbitraryReducedMaybe n -- gameResponsePlaytimeMean :: Maybe Float
    <*> arbitraryReducedMaybe n -- gameResponsePlaytimeMentions :: Maybe Int
  
instance Arbitrary GameResponseRating where
  arbitrary = sized genGameResponseRating

genGameResponseRating :: Int -> Gen GameResponseRating
genGameResponseRating n =
  GameResponseRating
    <$> arbitraryReducedMaybe n -- gameResponseRatingMean :: Maybe Float
    <*> arbitraryReducedMaybe n -- gameResponseRatingCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- gameResponseRatingMeanPlayers :: Maybe Float
    <*> arbitraryReducedMaybe n -- gameResponseRatingCountPlayers :: Maybe Int
    <*> arbitraryReducedMaybe n -- gameResponseRatingMeanCritics :: Maybe Float
    <*> arbitraryReducedMaybe n -- gameResponseRatingCountCritics :: Maybe Int
  
instance Arbitrary SearchResponse where
  arbitrary = sized genSearchResponse

genSearchResponse :: Int -> Gen SearchResponse
genSearchResponse n =
  SearchResponse
    <$> arbitraryReducedMaybe n -- searchResponseSorting :: Maybe SearchResponseSorting
    <*> arbitraryReducedMaybe n -- searchResponseActiveFilterOptions :: Maybe [SearchResponseActiveFilterOptionsInner]
    <*> arbitraryReducedMaybe n -- searchResponseQuery :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResponseTotalResults :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchResponseLimit :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchResponseOffset :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchResponseResults :: Maybe [SearchResponseResultsInner]
    <*> arbitraryReducedMaybe n -- searchResponseFilterOptions :: Maybe [SearchResponseFilterOptionsInner]
    <*> arbitraryReducedMaybe n -- searchResponseSortingOptions :: Maybe [SearchResponseSortingOptionsInner]
  
instance Arbitrary SearchResponseActiveFilterOptionsInner where
  arbitrary = sized genSearchResponseActiveFilterOptionsInner

genSearchResponseActiveFilterOptionsInner :: Int -> Gen SearchResponseActiveFilterOptionsInner
genSearchResponseActiveFilterOptionsInner n =
  SearchResponseActiveFilterOptionsInner
    <$> arbitraryReducedMaybe n -- searchResponseActiveFilterOptionsInnerKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResponseActiveFilterOptionsInnerConnection :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResponseActiveFilterOptionsInnerValues :: Maybe [SearchResponseActiveFilterOptionsInnerValuesInner]
  
instance Arbitrary SearchResponseActiveFilterOptionsInnerValuesInner where
  arbitrary = sized genSearchResponseActiveFilterOptionsInnerValuesInner

genSearchResponseActiveFilterOptionsInnerValuesInner :: Int -> Gen SearchResponseActiveFilterOptionsInnerValuesInner
genSearchResponseActiveFilterOptionsInnerValuesInner n =
  SearchResponseActiveFilterOptionsInnerValuesInner
    <$> arbitraryReducedMaybe n -- searchResponseActiveFilterOptionsInnerValuesInnerMatch :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResponseActiveFilterOptionsInnerValuesInnerValue :: Maybe Text
  
instance Arbitrary SearchResponseFilterOptionsInner where
  arbitrary = sized genSearchResponseFilterOptionsInner

genSearchResponseFilterOptionsInner :: Int -> Gen SearchResponseFilterOptionsInner
genSearchResponseFilterOptionsInner n =
  SearchResponseFilterOptionsInner
    <$> arbitraryReducedMaybe n -- searchResponseFilterOptionsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResponseFilterOptionsInnerKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResponseFilterOptionsInnerValues :: Maybe [SearchResponseFilterOptionsInnerValuesInner]
  
instance Arbitrary SearchResponseFilterOptionsInnerValuesInner where
  arbitrary = sized genSearchResponseFilterOptionsInnerValuesInner

genSearchResponseFilterOptionsInnerValuesInner :: Int -> Gen SearchResponseFilterOptionsInnerValuesInner
genSearchResponseFilterOptionsInnerValuesInner n =
  SearchResponseFilterOptionsInnerValuesInner
    <$> arbitraryReducedMaybe n -- searchResponseFilterOptionsInnerValuesInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResponseFilterOptionsInnerValuesInnerKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResponseFilterOptionsInnerValuesInnerCount :: Maybe Double
  
instance Arbitrary SearchResponseResultsInner where
  arbitrary = sized genSearchResponseResultsInner

genSearchResponseResultsInner :: Int -> Gen SearchResponseResultsInner
genSearchResponseResultsInner n =
  SearchResponseResultsInner
    <$> arbitraryReducedMaybe n -- searchResponseResultsInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchResponseResultsInnerYear :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchResponseResultsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResponseResultsInnerGenre :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResponseResultsInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResponseResultsInnerLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResponseResultsInnerRating :: Maybe SearchResponseResultsInnerRating
    <*> arbitraryReducedMaybe n -- searchResponseResultsInnerAdultOnly :: Maybe Bool
    <*> arbitraryReducedMaybe n -- searchResponseResultsInnerScreenshots :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- searchResponseResultsInnerMicroTrailer :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResponseResultsInnerGameplay :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResponseResultsInnerShortDescription :: Maybe Text
  
instance Arbitrary SearchResponseResultsInnerRating where
  arbitrary = sized genSearchResponseResultsInnerRating

genSearchResponseResultsInnerRating :: Int -> Gen SearchResponseResultsInnerRating
genSearchResponseResultsInnerRating n =
  SearchResponseResultsInnerRating
    <$> arbitraryReducedMaybe n -- searchResponseResultsInnerRatingMean :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchResponseResultsInnerRatingCount :: Maybe Double
  
instance Arbitrary SearchResponseSorting where
  arbitrary = sized genSearchResponseSorting

genSearchResponseSorting :: Int -> Gen SearchResponseSorting
genSearchResponseSorting n =
  SearchResponseSorting
    <$> arbitraryReducedMaybe n -- searchResponseSortingKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResponseSortingDirection :: Maybe Text
  
instance Arbitrary SearchResponseSortingOptionsInner where
  arbitrary = sized genSearchResponseSortingOptionsInner

genSearchResponseSortingOptionsInner :: Int -> Gen SearchResponseSortingOptionsInner
genSearchResponseSortingOptionsInner n =
  SearchResponseSortingOptionsInner
    <$> arbitraryReducedMaybe n -- searchResponseSortingOptionsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResponseSortingOptionsInnerSort :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchResponseSortingOptionsInnerKey :: Maybe Text
  
instance Arbitrary SearchSuggestionResponse where
  arbitrary = sized genSearchSuggestionResponse

genSearchSuggestionResponse :: Int -> Gen SearchSuggestionResponse
genSearchSuggestionResponse n =
  SearchSuggestionResponse
    <$> arbitraryReducedMaybe n -- searchSuggestionResponseResults :: Maybe [SearchSuggestionResponseResultsInner]
  
instance Arbitrary SearchSuggestionResponseResultsInner where
  arbitrary = sized genSearchSuggestionResponseResultsInner

genSearchSuggestionResponseResultsInner :: Int -> Gen SearchSuggestionResponseResultsInner
genSearchSuggestionResponseResultsInner n =
  SearchSuggestionResponseResultsInner
    <$> arbitraryReducedMaybe n -- searchSuggestionResponseResultsInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchSuggestionResponseResultsInnerYear :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchSuggestionResponseResultsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchSuggestionResponseResultsInnerGenre :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchSuggestionResponseResultsInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchSuggestionResponseResultsInnerLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchSuggestionResponseResultsInnerRating :: Maybe SearchResponseResultsInnerRating
    <*> arbitraryReducedMaybe n -- searchSuggestionResponseResultsInnerAdultOnly :: Maybe Bool
  
instance Arbitrary SimilarGamesResponse where
  arbitrary = sized genSimilarGamesResponse

genSimilarGamesResponse :: Int -> Gen SimilarGamesResponse
genSimilarGamesResponse n =
  SimilarGamesResponse
    <$> arbitraryReducedMaybe n -- similarGamesResponseResults :: Maybe [SearchResponseResultsInner]
  



