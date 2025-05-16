# SearchSuggestionResponseResultsInner

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

## Methods

### NewSearchSuggestionResponseResultsInner

`func NewSearchSuggestionResponseResultsInner() *SearchSuggestionResponseResultsInner`

NewSearchSuggestionResponseResultsInner instantiates a new SearchSuggestionResponseResultsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchSuggestionResponseResultsInnerWithDefaults

`func NewSearchSuggestionResponseResultsInnerWithDefaults() *SearchSuggestionResponseResultsInner`

NewSearchSuggestionResponseResultsInnerWithDefaults instantiates a new SearchSuggestionResponseResultsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SearchSuggestionResponseResultsInner) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SearchSuggestionResponseResultsInner) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SearchSuggestionResponseResultsInner) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *SearchSuggestionResponseResultsInner) HasId() bool`

HasId returns a boolean if a field has been set.

### GetYear

`func (o *SearchSuggestionResponseResultsInner) GetYear() float32`

GetYear returns the Year field if non-nil, zero value otherwise.

### GetYearOk

`func (o *SearchSuggestionResponseResultsInner) GetYearOk() (*float32, bool)`

GetYearOk returns a tuple with the Year field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetYear

`func (o *SearchSuggestionResponseResultsInner) SetYear(v float32)`

SetYear sets Year field to given value.

### HasYear

`func (o *SearchSuggestionResponseResultsInner) HasYear() bool`

HasYear returns a boolean if a field has been set.

### GetName

`func (o *SearchSuggestionResponseResultsInner) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SearchSuggestionResponseResultsInner) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SearchSuggestionResponseResultsInner) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SearchSuggestionResponseResultsInner) HasName() bool`

HasName returns a boolean if a field has been set.

### GetGenre

`func (o *SearchSuggestionResponseResultsInner) GetGenre() string`

GetGenre returns the Genre field if non-nil, zero value otherwise.

### GetGenreOk

`func (o *SearchSuggestionResponseResultsInner) GetGenreOk() (*string, bool)`

GetGenreOk returns a tuple with the Genre field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGenre

`func (o *SearchSuggestionResponseResultsInner) SetGenre(v string)`

SetGenre sets Genre field to given value.

### HasGenre

`func (o *SearchSuggestionResponseResultsInner) HasGenre() bool`

HasGenre returns a boolean if a field has been set.

### GetImage

`func (o *SearchSuggestionResponseResultsInner) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *SearchSuggestionResponseResultsInner) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *SearchSuggestionResponseResultsInner) SetImage(v string)`

SetImage sets Image field to given value.

### HasImage

`func (o *SearchSuggestionResponseResultsInner) HasImage() bool`

HasImage returns a boolean if a field has been set.

### GetLink

`func (o *SearchSuggestionResponseResultsInner) GetLink() string`

GetLink returns the Link field if non-nil, zero value otherwise.

### GetLinkOk

`func (o *SearchSuggestionResponseResultsInner) GetLinkOk() (*string, bool)`

GetLinkOk returns a tuple with the Link field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLink

`func (o *SearchSuggestionResponseResultsInner) SetLink(v string)`

SetLink sets Link field to given value.

### HasLink

`func (o *SearchSuggestionResponseResultsInner) HasLink() bool`

HasLink returns a boolean if a field has been set.

### GetRating

`func (o *SearchSuggestionResponseResultsInner) GetRating() SearchResponseResultsInnerRating`

GetRating returns the Rating field if non-nil, zero value otherwise.

### GetRatingOk

`func (o *SearchSuggestionResponseResultsInner) GetRatingOk() (*SearchResponseResultsInnerRating, bool)`

GetRatingOk returns a tuple with the Rating field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRating

`func (o *SearchSuggestionResponseResultsInner) SetRating(v SearchResponseResultsInnerRating)`

SetRating sets Rating field to given value.

### HasRating

`func (o *SearchSuggestionResponseResultsInner) HasRating() bool`

HasRating returns a boolean if a field has been set.

### GetAdultOnly

`func (o *SearchSuggestionResponseResultsInner) GetAdultOnly() bool`

GetAdultOnly returns the AdultOnly field if non-nil, zero value otherwise.

### GetAdultOnlyOk

`func (o *SearchSuggestionResponseResultsInner) GetAdultOnlyOk() (*bool, bool)`

GetAdultOnlyOk returns a tuple with the AdultOnly field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAdultOnly

`func (o *SearchSuggestionResponseResultsInner) SetAdultOnly(v bool)`

SetAdultOnly sets AdultOnly field to given value.

### HasAdultOnly

`func (o *SearchSuggestionResponseResultsInner) HasAdultOnly() bool`

HasAdultOnly returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


