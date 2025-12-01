# GameNewsItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **string** |  | 
**Url** | **string** |  | 
**Source** | **string** |  | 
**Image** | Pointer to **string** |  | [optional] 
**Published** | **string** |  | 

## Methods

### NewGameNewsItem

`func NewGameNewsItem(title string, url string, source string, published string, ) *GameNewsItem`

NewGameNewsItem instantiates a new GameNewsItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGameNewsItemWithDefaults

`func NewGameNewsItemWithDefaults() *GameNewsItem`

NewGameNewsItemWithDefaults instantiates a new GameNewsItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTitle

`func (o *GameNewsItem) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *GameNewsItem) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *GameNewsItem) SetTitle(v string)`

SetTitle sets Title field to given value.


### GetUrl

`func (o *GameNewsItem) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *GameNewsItem) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *GameNewsItem) SetUrl(v string)`

SetUrl sets Url field to given value.


### GetSource

`func (o *GameNewsItem) GetSource() string`

GetSource returns the Source field if non-nil, zero value otherwise.

### GetSourceOk

`func (o *GameNewsItem) GetSourceOk() (*string, bool)`

GetSourceOk returns a tuple with the Source field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSource

`func (o *GameNewsItem) SetSource(v string)`

SetSource sets Source field to given value.


### GetImage

`func (o *GameNewsItem) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *GameNewsItem) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *GameNewsItem) SetImage(v string)`

SetImage sets Image field to given value.

### HasImage

`func (o *GameNewsItem) HasImage() bool`

HasImage returns a boolean if a field has been set.

### GetPublished

`func (o *GameNewsItem) GetPublished() string`

GetPublished returns the Published field if non-nil, zero value otherwise.

### GetPublishedOk

`func (o *GameNewsItem) GetPublishedOk() (*string, bool)`

GetPublishedOk returns a tuple with the Published field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublished

`func (o *GameNewsItem) SetPublished(v string)`

SetPublished sets Published field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


