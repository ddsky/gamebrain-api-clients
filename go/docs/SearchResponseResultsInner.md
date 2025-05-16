# SearchResponseResultsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**Year** | Pointer to **float32** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Genre** | Pointer to **string** |  | [optional] 
**Image** | Pointer to **string** |  | [optional] 
**Link** | Pointer to **string** |  | [optional] 
**Rating** | Pointer to [**SearchResponseResultsInnerRating**](SearchResponseResultsInnerRating.md) |  | [optional] 
**AdultOnly** | Pointer to **bool** |  | [optional] 
**Screenshots** | Pointer to **[]string** |  | [optional] 
**MicroTrailer** | Pointer to **string** |  | [optional] 
**Gameplay** | Pointer to **string** |  | [optional] 
**ShortDescription** | Pointer to **string** |  | [optional] 

## Methods

### NewSearchResponseResultsInner

`func NewSearchResponseResultsInner() *SearchResponseResultsInner`

NewSearchResponseResultsInner instantiates a new SearchResponseResultsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchResponseResultsInnerWithDefaults

`func NewSearchResponseResultsInnerWithDefaults() *SearchResponseResultsInner`

NewSearchResponseResultsInnerWithDefaults instantiates a new SearchResponseResultsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SearchResponseResultsInner) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SearchResponseResultsInner) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SearchResponseResultsInner) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *SearchResponseResultsInner) HasId() bool`

HasId returns a boolean if a field has been set.

### GetYear

`func (o *SearchResponseResultsInner) GetYear() float32`

GetYear returns the Year field if non-nil, zero value otherwise.

### GetYearOk

`func (o *SearchResponseResultsInner) GetYearOk() (*float32, bool)`

GetYearOk returns a tuple with the Year field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetYear

`func (o *SearchResponseResultsInner) SetYear(v float32)`

SetYear sets Year field to given value.

### HasYear

`func (o *SearchResponseResultsInner) HasYear() bool`

HasYear returns a boolean if a field has been set.

### GetName

`func (o *SearchResponseResultsInner) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SearchResponseResultsInner) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SearchResponseResultsInner) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SearchResponseResultsInner) HasName() bool`

HasName returns a boolean if a field has been set.

### GetGenre

`func (o *SearchResponseResultsInner) GetGenre() string`

GetGenre returns the Genre field if non-nil, zero value otherwise.

### GetGenreOk

`func (o *SearchResponseResultsInner) GetGenreOk() (*string, bool)`

GetGenreOk returns a tuple with the Genre field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGenre

`func (o *SearchResponseResultsInner) SetGenre(v string)`

SetGenre sets Genre field to given value.

### HasGenre

`func (o *SearchResponseResultsInner) HasGenre() bool`

HasGenre returns a boolean if a field has been set.

### GetImage

`func (o *SearchResponseResultsInner) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *SearchResponseResultsInner) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *SearchResponseResultsInner) SetImage(v string)`

SetImage sets Image field to given value.

### HasImage

`func (o *SearchResponseResultsInner) HasImage() bool`

HasImage returns a boolean if a field has been set.

### GetLink

`func (o *SearchResponseResultsInner) GetLink() string`

GetLink returns the Link field if non-nil, zero value otherwise.

### GetLinkOk

`func (o *SearchResponseResultsInner) GetLinkOk() (*string, bool)`

GetLinkOk returns a tuple with the Link field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLink

`func (o *SearchResponseResultsInner) SetLink(v string)`

SetLink sets Link field to given value.

### HasLink

`func (o *SearchResponseResultsInner) HasLink() bool`

HasLink returns a boolean if a field has been set.

### GetRating

`func (o *SearchResponseResultsInner) GetRating() SearchResponseResultsInnerRating`

GetRating returns the Rating field if non-nil, zero value otherwise.

### GetRatingOk

`func (o *SearchResponseResultsInner) GetRatingOk() (*SearchResponseResultsInnerRating, bool)`

GetRatingOk returns a tuple with the Rating field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRating

`func (o *SearchResponseResultsInner) SetRating(v SearchResponseResultsInnerRating)`

SetRating sets Rating field to given value.

### HasRating

`func (o *SearchResponseResultsInner) HasRating() bool`

HasRating returns a boolean if a field has been set.

### GetAdultOnly

`func (o *SearchResponseResultsInner) GetAdultOnly() bool`

GetAdultOnly returns the AdultOnly field if non-nil, zero value otherwise.

### GetAdultOnlyOk

`func (o *SearchResponseResultsInner) GetAdultOnlyOk() (*bool, bool)`

GetAdultOnlyOk returns a tuple with the AdultOnly field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAdultOnly

`func (o *SearchResponseResultsInner) SetAdultOnly(v bool)`

SetAdultOnly sets AdultOnly field to given value.

### HasAdultOnly

`func (o *SearchResponseResultsInner) HasAdultOnly() bool`

HasAdultOnly returns a boolean if a field has been set.

### GetScreenshots

`func (o *SearchResponseResultsInner) GetScreenshots() []string`

GetScreenshots returns the Screenshots field if non-nil, zero value otherwise.

### GetScreenshotsOk

`func (o *SearchResponseResultsInner) GetScreenshotsOk() (*[]string, bool)`

GetScreenshotsOk returns a tuple with the Screenshots field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScreenshots

`func (o *SearchResponseResultsInner) SetScreenshots(v []string)`

SetScreenshots sets Screenshots field to given value.

### HasScreenshots

`func (o *SearchResponseResultsInner) HasScreenshots() bool`

HasScreenshots returns a boolean if a field has been set.

### GetMicroTrailer

`func (o *SearchResponseResultsInner) GetMicroTrailer() string`

GetMicroTrailer returns the MicroTrailer field if non-nil, zero value otherwise.

### GetMicroTrailerOk

`func (o *SearchResponseResultsInner) GetMicroTrailerOk() (*string, bool)`

GetMicroTrailerOk returns a tuple with the MicroTrailer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMicroTrailer

`func (o *SearchResponseResultsInner) SetMicroTrailer(v string)`

SetMicroTrailer sets MicroTrailer field to given value.

### HasMicroTrailer

`func (o *SearchResponseResultsInner) HasMicroTrailer() bool`

HasMicroTrailer returns a boolean if a field has been set.

### GetGameplay

`func (o *SearchResponseResultsInner) GetGameplay() string`

GetGameplay returns the Gameplay field if non-nil, zero value otherwise.

### GetGameplayOk

`func (o *SearchResponseResultsInner) GetGameplayOk() (*string, bool)`

GetGameplayOk returns a tuple with the Gameplay field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGameplay

`func (o *SearchResponseResultsInner) SetGameplay(v string)`

SetGameplay sets Gameplay field to given value.

### HasGameplay

`func (o *SearchResponseResultsInner) HasGameplay() bool`

HasGameplay returns a boolean if a field has been set.

### GetShortDescription

`func (o *SearchResponseResultsInner) GetShortDescription() string`

GetShortDescription returns the ShortDescription field if non-nil, zero value otherwise.

### GetShortDescriptionOk

`func (o *SearchResponseResultsInner) GetShortDescriptionOk() (*string, bool)`

GetShortDescriptionOk returns a tuple with the ShortDescription field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShortDescription

`func (o *SearchResponseResultsInner) SetShortDescription(v string)`

SetShortDescription sets ShortDescription field to given value.

### HasShortDescription

`func (o *SearchResponseResultsInner) HasShortDescription() bool`

HasShortDescription returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


