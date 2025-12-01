# GameNewsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**News** | [**[]GameNewsItem**](GameNewsItem.md) |  | 

## Methods

### NewGameNewsResponse

`func NewGameNewsResponse(news []GameNewsItem, ) *GameNewsResponse`

NewGameNewsResponse instantiates a new GameNewsResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGameNewsResponseWithDefaults

`func NewGameNewsResponseWithDefaults() *GameNewsResponse`

NewGameNewsResponseWithDefaults instantiates a new GameNewsResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetNews

`func (o *GameNewsResponse) GetNews() []GameNewsItem`

GetNews returns the News field if non-nil, zero value otherwise.

### GetNewsOk

`func (o *GameNewsResponse) GetNewsOk() (*[]GameNewsItem, bool)`

GetNewsOk returns a tuple with the News field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNews

`func (o *GameNewsResponse) SetNews(v []GameNewsItem)`

SetNews sets News field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


