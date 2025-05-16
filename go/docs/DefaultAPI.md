# \DefaultAPI

All URIs are relative to *https://api.gamebrain.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Detail**](DefaultAPI.md#Detail) | **Get** /games/{id} | GET v1/games/{id}
[**Search**](DefaultAPI.md#Search) | **Get** /games | GET v1/games
[**Similar**](DefaultAPI.md#Similar) | **Get** /games/{id}/similar | GET v1/games/{id}/similar
[**Suggest**](DefaultAPI.md#Suggest) | **Get** /games/suggestions | GET v1/games/suggestions



## Detail

> GameResponse Detail(ctx, id).ApiKey(apiKey).Execute()

GET v1/games/{id}

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/gamebrain-clients/tree/master/go/"
)

func main() {
	id := int32(56) // int32 | 
	apiKey := "apiKey_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DefaultAPI.Detail(context.Background(), id).ApiKey(apiKey).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.Detail``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `Detail`: GameResponse
	fmt.Fprintf(os.Stdout, "Response from `DefaultAPI.Detail`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiDetailRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **apiKey** | **string** |  | 

### Return type

[**GameResponse**](GameResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Search

> SearchResponse Search(ctx).Query(query).Offset(offset).Limit(limit).Filters(filters).Sort(sort).SortOrder(sortOrder).GenerateFilterOptions(generateFilterOptions).ApiKey(apiKey).Execute()

GET v1/games

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/gamebrain-clients/tree/master/go/"
)

func main() {
	query := "query_example" // string | 
	offset := int32(56) // int32 | 
	limit := int32(56) // int32 | 
	filters := "filters_example" // string |  (default to "[]")
	sort := "sort_example" // string | 
	sortOrder := "sortOrder_example" // string |  (default to "asc")
	generateFilterOptions := true // bool |  (default to true)
	apiKey := "apiKey_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DefaultAPI.Search(context.Background()).Query(query).Offset(offset).Limit(limit).Filters(filters).Sort(sort).SortOrder(sortOrder).GenerateFilterOptions(generateFilterOptions).ApiKey(apiKey).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.Search``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `Search`: SearchResponse
	fmt.Fprintf(os.Stdout, "Response from `DefaultAPI.Search`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** |  | 
 **offset** | **int32** |  | 
 **limit** | **int32** |  | 
 **filters** | **string** |  | [default to &quot;[]&quot;]
 **sort** | **string** |  | 
 **sortOrder** | **string** |  | [default to &quot;asc&quot;]
 **generateFilterOptions** | **bool** |  | [default to true]
 **apiKey** | **string** |  | 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Similar

> SimilarGamesResponse Similar(ctx, id).Limit(limit).ApiKey(apiKey).Execute()

GET v1/games/{id}/similar

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/gamebrain-clients/tree/master/go/"
)

func main() {
	id := int32(56) // int32 | 
	limit := int32(56) // int32 | 
	apiKey := "apiKey_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DefaultAPI.Similar(context.Background(), id).Limit(limit).ApiKey(apiKey).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.Similar``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `Similar`: SimilarGamesResponse
	fmt.Fprintf(os.Stdout, "Response from `DefaultAPI.Similar`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiSimilarRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **limit** | **int32** |  | 
 **apiKey** | **string** |  | 

### Return type

[**SimilarGamesResponse**](SimilarGamesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Suggest

> SearchSuggestionResponse Suggest(ctx).Query(query).Limit(limit).ApiKey(apiKey).Execute()

GET v1/games/suggestions

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/gamebrain-clients/tree/master/go/"
)

func main() {
	query := "query_example" // string | 
	limit := int32(56) // int32 | 
	apiKey := "apiKey_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DefaultAPI.Suggest(context.Background()).Query(query).Limit(limit).ApiKey(apiKey).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.Suggest``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `Suggest`: SearchSuggestionResponse
	fmt.Fprintf(os.Stdout, "Response from `DefaultAPI.Suggest`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSuggestRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** |  | 
 **limit** | **int32** |  | 
 **apiKey** | **string** |  | 

### Return type

[**SearchSuggestionResponse**](SearchSuggestionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

