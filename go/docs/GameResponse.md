# GameResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Image** | Pointer to **string** |  | [optional] 
**Gameplay** | Pointer to **string** |  | [optional] 
**Link** | Pointer to **string** |  | [optional] 
**XUrl** | Pointer to **string** |  | [optional] 
**Rating** | Pointer to [**GameResponseRating**](GameResponseRating.md) |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**ShortDescription** | Pointer to **string** |  | [optional] 
**ReleaseDate** | Pointer to **string** |  | [optional] 
**Developer** | Pointer to **string** |  | [optional] 
**Playtime** | Pointer to [**GameResponsePlaytime**](GameResponsePlaytime.md) |  | [optional] 
**Platforms** | Pointer to [**[]GameResponsePlatformsInner**](GameResponsePlatformsInner.md) |  | [optional] 
**Tags** | Pointer to **[]string** |  | [optional] 
**Genres** | Pointer to [**[]GameResponsePlatformsInner**](GameResponsePlatformsInner.md) |  | [optional] 
**Genre** | Pointer to **string** |  | [optional] 
**Themes** | Pointer to [**[]GameResponsePlatformsInner**](GameResponsePlatformsInner.md) |  | [optional] 
**AdultOnly** | Pointer to **bool** |  | [optional] 
**PlayModes** | Pointer to [**[]GameResponsePlatformsInner**](GameResponsePlatformsInner.md) |  | [optional] 
**Screenshots** | Pointer to **[]string** |  | [optional] 
**Videos** | Pointer to **[]string** |  | [optional] 
**Offers** | Pointer to [**[]GameResponseOffersInner**](GameResponseOffersInner.md) |  | [optional] 
**OfficialStores** | Pointer to [**[]GameResponseOfficialStoresInner**](GameResponseOfficialStoresInner.md) |  | [optional] 
**MicroTrailer** | Pointer to **string** |  | [optional] 

## Methods

### NewGameResponse

`func NewGameResponse() *GameResponse`

NewGameResponse instantiates a new GameResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGameResponseWithDefaults

`func NewGameResponseWithDefaults() *GameResponse`

NewGameResponseWithDefaults instantiates a new GameResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *GameResponse) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *GameResponse) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *GameResponse) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *GameResponse) HasId() bool`

HasId returns a boolean if a field has been set.

### GetName

`func (o *GameResponse) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *GameResponse) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *GameResponse) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *GameResponse) HasName() bool`

HasName returns a boolean if a field has been set.

### GetImage

`func (o *GameResponse) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *GameResponse) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *GameResponse) SetImage(v string)`

SetImage sets Image field to given value.

### HasImage

`func (o *GameResponse) HasImage() bool`

HasImage returns a boolean if a field has been set.

### GetGameplay

`func (o *GameResponse) GetGameplay() string`

GetGameplay returns the Gameplay field if non-nil, zero value otherwise.

### GetGameplayOk

`func (o *GameResponse) GetGameplayOk() (*string, bool)`

GetGameplayOk returns a tuple with the Gameplay field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGameplay

`func (o *GameResponse) SetGameplay(v string)`

SetGameplay sets Gameplay field to given value.

### HasGameplay

`func (o *GameResponse) HasGameplay() bool`

HasGameplay returns a boolean if a field has been set.

### GetLink

`func (o *GameResponse) GetLink() string`

GetLink returns the Link field if non-nil, zero value otherwise.

### GetLinkOk

`func (o *GameResponse) GetLinkOk() (*string, bool)`

GetLinkOk returns a tuple with the Link field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLink

`func (o *GameResponse) SetLink(v string)`

SetLink sets Link field to given value.

### HasLink

`func (o *GameResponse) HasLink() bool`

HasLink returns a boolean if a field has been set.

### GetXUrl

`func (o *GameResponse) GetXUrl() string`

GetXUrl returns the XUrl field if non-nil, zero value otherwise.

### GetXUrlOk

`func (o *GameResponse) GetXUrlOk() (*string, bool)`

GetXUrlOk returns a tuple with the XUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetXUrl

`func (o *GameResponse) SetXUrl(v string)`

SetXUrl sets XUrl field to given value.

### HasXUrl

`func (o *GameResponse) HasXUrl() bool`

HasXUrl returns a boolean if a field has been set.

### GetRating

`func (o *GameResponse) GetRating() GameResponseRating`

GetRating returns the Rating field if non-nil, zero value otherwise.

### GetRatingOk

`func (o *GameResponse) GetRatingOk() (*GameResponseRating, bool)`

GetRatingOk returns a tuple with the Rating field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRating

`func (o *GameResponse) SetRating(v GameResponseRating)`

SetRating sets Rating field to given value.

### HasRating

`func (o *GameResponse) HasRating() bool`

HasRating returns a boolean if a field has been set.

### GetDescription

`func (o *GameResponse) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *GameResponse) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *GameResponse) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *GameResponse) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetShortDescription

`func (o *GameResponse) GetShortDescription() string`

GetShortDescription returns the ShortDescription field if non-nil, zero value otherwise.

### GetShortDescriptionOk

`func (o *GameResponse) GetShortDescriptionOk() (*string, bool)`

GetShortDescriptionOk returns a tuple with the ShortDescription field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShortDescription

`func (o *GameResponse) SetShortDescription(v string)`

SetShortDescription sets ShortDescription field to given value.

### HasShortDescription

`func (o *GameResponse) HasShortDescription() bool`

HasShortDescription returns a boolean if a field has been set.

### GetReleaseDate

`func (o *GameResponse) GetReleaseDate() string`

GetReleaseDate returns the ReleaseDate field if non-nil, zero value otherwise.

### GetReleaseDateOk

`func (o *GameResponse) GetReleaseDateOk() (*string, bool)`

GetReleaseDateOk returns a tuple with the ReleaseDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReleaseDate

`func (o *GameResponse) SetReleaseDate(v string)`

SetReleaseDate sets ReleaseDate field to given value.

### HasReleaseDate

`func (o *GameResponse) HasReleaseDate() bool`

HasReleaseDate returns a boolean if a field has been set.

### GetDeveloper

`func (o *GameResponse) GetDeveloper() string`

GetDeveloper returns the Developer field if non-nil, zero value otherwise.

### GetDeveloperOk

`func (o *GameResponse) GetDeveloperOk() (*string, bool)`

GetDeveloperOk returns a tuple with the Developer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeveloper

`func (o *GameResponse) SetDeveloper(v string)`

SetDeveloper sets Developer field to given value.

### HasDeveloper

`func (o *GameResponse) HasDeveloper() bool`

HasDeveloper returns a boolean if a field has been set.

### GetPlaytime

`func (o *GameResponse) GetPlaytime() GameResponsePlaytime`

GetPlaytime returns the Playtime field if non-nil, zero value otherwise.

### GetPlaytimeOk

`func (o *GameResponse) GetPlaytimeOk() (*GameResponsePlaytime, bool)`

GetPlaytimeOk returns a tuple with the Playtime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPlaytime

`func (o *GameResponse) SetPlaytime(v GameResponsePlaytime)`

SetPlaytime sets Playtime field to given value.

### HasPlaytime

`func (o *GameResponse) HasPlaytime() bool`

HasPlaytime returns a boolean if a field has been set.

### GetPlatforms

`func (o *GameResponse) GetPlatforms() []GameResponsePlatformsInner`

GetPlatforms returns the Platforms field if non-nil, zero value otherwise.

### GetPlatformsOk

`func (o *GameResponse) GetPlatformsOk() (*[]GameResponsePlatformsInner, bool)`

GetPlatformsOk returns a tuple with the Platforms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPlatforms

`func (o *GameResponse) SetPlatforms(v []GameResponsePlatformsInner)`

SetPlatforms sets Platforms field to given value.

### HasPlatforms

`func (o *GameResponse) HasPlatforms() bool`

HasPlatforms returns a boolean if a field has been set.

### GetTags

`func (o *GameResponse) GetTags() []string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *GameResponse) GetTagsOk() (*[]string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *GameResponse) SetTags(v []string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *GameResponse) HasTags() bool`

HasTags returns a boolean if a field has been set.

### GetGenres

`func (o *GameResponse) GetGenres() []GameResponsePlatformsInner`

GetGenres returns the Genres field if non-nil, zero value otherwise.

### GetGenresOk

`func (o *GameResponse) GetGenresOk() (*[]GameResponsePlatformsInner, bool)`

GetGenresOk returns a tuple with the Genres field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGenres

`func (o *GameResponse) SetGenres(v []GameResponsePlatformsInner)`

SetGenres sets Genres field to given value.

### HasGenres

`func (o *GameResponse) HasGenres() bool`

HasGenres returns a boolean if a field has been set.

### GetGenre

`func (o *GameResponse) GetGenre() string`

GetGenre returns the Genre field if non-nil, zero value otherwise.

### GetGenreOk

`func (o *GameResponse) GetGenreOk() (*string, bool)`

GetGenreOk returns a tuple with the Genre field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGenre

`func (o *GameResponse) SetGenre(v string)`

SetGenre sets Genre field to given value.

### HasGenre

`func (o *GameResponse) HasGenre() bool`

HasGenre returns a boolean if a field has been set.

### GetThemes

`func (o *GameResponse) GetThemes() []GameResponsePlatformsInner`

GetThemes returns the Themes field if non-nil, zero value otherwise.

### GetThemesOk

`func (o *GameResponse) GetThemesOk() (*[]GameResponsePlatformsInner, bool)`

GetThemesOk returns a tuple with the Themes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetThemes

`func (o *GameResponse) SetThemes(v []GameResponsePlatformsInner)`

SetThemes sets Themes field to given value.

### HasThemes

`func (o *GameResponse) HasThemes() bool`

HasThemes returns a boolean if a field has been set.

### GetAdultOnly

`func (o *GameResponse) GetAdultOnly() bool`

GetAdultOnly returns the AdultOnly field if non-nil, zero value otherwise.

### GetAdultOnlyOk

`func (o *GameResponse) GetAdultOnlyOk() (*bool, bool)`

GetAdultOnlyOk returns a tuple with the AdultOnly field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAdultOnly

`func (o *GameResponse) SetAdultOnly(v bool)`

SetAdultOnly sets AdultOnly field to given value.

### HasAdultOnly

`func (o *GameResponse) HasAdultOnly() bool`

HasAdultOnly returns a boolean if a field has been set.

### GetPlayModes

`func (o *GameResponse) GetPlayModes() []GameResponsePlatformsInner`

GetPlayModes returns the PlayModes field if non-nil, zero value otherwise.

### GetPlayModesOk

`func (o *GameResponse) GetPlayModesOk() (*[]GameResponsePlatformsInner, bool)`

GetPlayModesOk returns a tuple with the PlayModes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPlayModes

`func (o *GameResponse) SetPlayModes(v []GameResponsePlatformsInner)`

SetPlayModes sets PlayModes field to given value.

### HasPlayModes

`func (o *GameResponse) HasPlayModes() bool`

HasPlayModes returns a boolean if a field has been set.

### GetScreenshots

`func (o *GameResponse) GetScreenshots() []string`

GetScreenshots returns the Screenshots field if non-nil, zero value otherwise.

### GetScreenshotsOk

`func (o *GameResponse) GetScreenshotsOk() (*[]string, bool)`

GetScreenshotsOk returns a tuple with the Screenshots field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScreenshots

`func (o *GameResponse) SetScreenshots(v []string)`

SetScreenshots sets Screenshots field to given value.

### HasScreenshots

`func (o *GameResponse) HasScreenshots() bool`

HasScreenshots returns a boolean if a field has been set.

### GetVideos

`func (o *GameResponse) GetVideos() []string`

GetVideos returns the Videos field if non-nil, zero value otherwise.

### GetVideosOk

`func (o *GameResponse) GetVideosOk() (*[]string, bool)`

GetVideosOk returns a tuple with the Videos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVideos

`func (o *GameResponse) SetVideos(v []string)`

SetVideos sets Videos field to given value.

### HasVideos

`func (o *GameResponse) HasVideos() bool`

HasVideos returns a boolean if a field has been set.

### GetOffers

`func (o *GameResponse) GetOffers() []GameResponseOffersInner`

GetOffers returns the Offers field if non-nil, zero value otherwise.

### GetOffersOk

`func (o *GameResponse) GetOffersOk() (*[]GameResponseOffersInner, bool)`

GetOffersOk returns a tuple with the Offers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffers

`func (o *GameResponse) SetOffers(v []GameResponseOffersInner)`

SetOffers sets Offers field to given value.

### HasOffers

`func (o *GameResponse) HasOffers() bool`

HasOffers returns a boolean if a field has been set.

### GetOfficialStores

`func (o *GameResponse) GetOfficialStores() []GameResponseOfficialStoresInner`

GetOfficialStores returns the OfficialStores field if non-nil, zero value otherwise.

### GetOfficialStoresOk

`func (o *GameResponse) GetOfficialStoresOk() (*[]GameResponseOfficialStoresInner, bool)`

GetOfficialStoresOk returns a tuple with the OfficialStores field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOfficialStores

`func (o *GameResponse) SetOfficialStores(v []GameResponseOfficialStoresInner)`

SetOfficialStores sets OfficialStores field to given value.

### HasOfficialStores

`func (o *GameResponse) HasOfficialStores() bool`

HasOfficialStores returns a boolean if a field has been set.

### GetMicroTrailer

`func (o *GameResponse) GetMicroTrailer() string`

GetMicroTrailer returns the MicroTrailer field if non-nil, zero value otherwise.

### GetMicroTrailerOk

`func (o *GameResponse) GetMicroTrailerOk() (*string, bool)`

GetMicroTrailerOk returns a tuple with the MicroTrailer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMicroTrailer

`func (o *GameResponse) SetMicroTrailer(v string)`

SetMicroTrailer sets MicroTrailer field to given value.

### HasMicroTrailer

`func (o *GameResponse) HasMicroTrailer() bool`

HasMicroTrailer returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


