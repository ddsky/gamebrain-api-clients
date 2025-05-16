# SearchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Sorting** | Pointer to [**SearchResponseSorting**](SearchResponseSorting.md) |  | [optional] 
**ActiveFilterOptions** | Pointer to [**[]SearchResponseActiveFilterOptionsInner**](SearchResponseActiveFilterOptionsInner.md) |  | [optional] 
**Query** | Pointer to **string** |  | [optional] 
**TotalResults** | Pointer to **int32** |  | [optional] 
**Limit** | Pointer to **int32** |  | [optional] 
**Offset** | Pointer to **int32** |  | [optional] 
**Results** | Pointer to [**[]SearchResponseResultsInner**](SearchResponseResultsInner.md) |  | [optional] 
**FilterOptions** | Pointer to [**[]SearchResponseFilterOptionsInner**](SearchResponseFilterOptionsInner.md) |  | [optional] 
**SortingOptions** | Pointer to [**[]SearchResponseSortingOptionsInner**](SearchResponseSortingOptionsInner.md) |  | [optional] 

## Methods

### NewSearchResponse

`func NewSearchResponse() *SearchResponse`

NewSearchResponse instantiates a new SearchResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchResponseWithDefaults

`func NewSearchResponseWithDefaults() *SearchResponse`

NewSearchResponseWithDefaults instantiates a new SearchResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSorting

`func (o *SearchResponse) GetSorting() SearchResponseSorting`

GetSorting returns the Sorting field if non-nil, zero value otherwise.

### GetSortingOk

`func (o *SearchResponse) GetSortingOk() (*SearchResponseSorting, bool)`

GetSortingOk returns a tuple with the Sorting field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSorting

`func (o *SearchResponse) SetSorting(v SearchResponseSorting)`

SetSorting sets Sorting field to given value.

### HasSorting

`func (o *SearchResponse) HasSorting() bool`

HasSorting returns a boolean if a field has been set.

### GetActiveFilterOptions

`func (o *SearchResponse) GetActiveFilterOptions() []SearchResponseActiveFilterOptionsInner`

GetActiveFilterOptions returns the ActiveFilterOptions field if non-nil, zero value otherwise.

### GetActiveFilterOptionsOk

`func (o *SearchResponse) GetActiveFilterOptionsOk() (*[]SearchResponseActiveFilterOptionsInner, bool)`

GetActiveFilterOptionsOk returns a tuple with the ActiveFilterOptions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActiveFilterOptions

`func (o *SearchResponse) SetActiveFilterOptions(v []SearchResponseActiveFilterOptionsInner)`

SetActiveFilterOptions sets ActiveFilterOptions field to given value.

### HasActiveFilterOptions

`func (o *SearchResponse) HasActiveFilterOptions() bool`

HasActiveFilterOptions returns a boolean if a field has been set.

### GetQuery

`func (o *SearchResponse) GetQuery() string`

GetQuery returns the Query field if non-nil, zero value otherwise.

### GetQueryOk

`func (o *SearchResponse) GetQueryOk() (*string, bool)`

GetQueryOk returns a tuple with the Query field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuery

`func (o *SearchResponse) SetQuery(v string)`

SetQuery sets Query field to given value.

### HasQuery

`func (o *SearchResponse) HasQuery() bool`

HasQuery returns a boolean if a field has been set.

### GetTotalResults

`func (o *SearchResponse) GetTotalResults() int32`

GetTotalResults returns the TotalResults field if non-nil, zero value otherwise.

### GetTotalResultsOk

`func (o *SearchResponse) GetTotalResultsOk() (*int32, bool)`

GetTotalResultsOk returns a tuple with the TotalResults field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalResults

`func (o *SearchResponse) SetTotalResults(v int32)`

SetTotalResults sets TotalResults field to given value.

### HasTotalResults

`func (o *SearchResponse) HasTotalResults() bool`

HasTotalResults returns a boolean if a field has been set.

### GetLimit

`func (o *SearchResponse) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *SearchResponse) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *SearchResponse) SetLimit(v int32)`

SetLimit sets Limit field to given value.

### HasLimit

`func (o *SearchResponse) HasLimit() bool`

HasLimit returns a boolean if a field has been set.

### GetOffset

`func (o *SearchResponse) GetOffset() int32`

GetOffset returns the Offset field if non-nil, zero value otherwise.

### GetOffsetOk

`func (o *SearchResponse) GetOffsetOk() (*int32, bool)`

GetOffsetOk returns a tuple with the Offset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffset

`func (o *SearchResponse) SetOffset(v int32)`

SetOffset sets Offset field to given value.

### HasOffset

`func (o *SearchResponse) HasOffset() bool`

HasOffset returns a boolean if a field has been set.

### GetResults

`func (o *SearchResponse) GetResults() []SearchResponseResultsInner`

GetResults returns the Results field if non-nil, zero value otherwise.

### GetResultsOk

`func (o *SearchResponse) GetResultsOk() (*[]SearchResponseResultsInner, bool)`

GetResultsOk returns a tuple with the Results field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResults

`func (o *SearchResponse) SetResults(v []SearchResponseResultsInner)`

SetResults sets Results field to given value.

### HasResults

`func (o *SearchResponse) HasResults() bool`

HasResults returns a boolean if a field has been set.

### GetFilterOptions

`func (o *SearchResponse) GetFilterOptions() []SearchResponseFilterOptionsInner`

GetFilterOptions returns the FilterOptions field if non-nil, zero value otherwise.

### GetFilterOptionsOk

`func (o *SearchResponse) GetFilterOptionsOk() (*[]SearchResponseFilterOptionsInner, bool)`

GetFilterOptionsOk returns a tuple with the FilterOptions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFilterOptions

`func (o *SearchResponse) SetFilterOptions(v []SearchResponseFilterOptionsInner)`

SetFilterOptions sets FilterOptions field to given value.

### HasFilterOptions

`func (o *SearchResponse) HasFilterOptions() bool`

HasFilterOptions returns a boolean if a field has been set.

### GetSortingOptions

`func (o *SearchResponse) GetSortingOptions() []SearchResponseSortingOptionsInner`

GetSortingOptions returns the SortingOptions field if non-nil, zero value otherwise.

### GetSortingOptionsOk

`func (o *SearchResponse) GetSortingOptionsOk() (*[]SearchResponseSortingOptionsInner, bool)`

GetSortingOptionsOk returns a tuple with the SortingOptions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSortingOptions

`func (o *SearchResponse) SetSortingOptions(v []SearchResponseSortingOptionsInner)`

SetSortingOptions sets SortingOptions field to given value.

### HasSortingOptions

`func (o *SearchResponse) HasSortingOptions() bool`

HasSortingOptions returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


