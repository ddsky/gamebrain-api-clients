# \DefaultAPI

All URIs are relative to *https://api.gamebrain.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Detail**](DefaultAPI.md#Detail) | **Get** /games/{id} | Get Game Details
[**News**](DefaultAPI.md#News) | **Get** /games/{id}/news | Get Game News
[**Search**](DefaultAPI.md#Search) | **Get** /games | Search Games
[**Similar**](DefaultAPI.md#Similar) | **Get** /games/{id}/similar | Get Similar Games
[**Suggest**](DefaultAPI.md#Suggest) | **Get** /games/suggestions | Get Game Suggestions



## Detail

> GameResponse Detail(ctx, id).ApiKey(apiKey).Execute()

Get Game Details



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
	id := int32(56) // int32 | The unique identifier of the game.
	apiKey := "abc123" // string | Your API key for authentication.

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
**id** | **int32** | The unique identifier of the game. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDetailRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **apiKey** | **string** | Your API key for authentication. | 

### Return type

[**GameResponse**](GameResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## News

> GameNewsResponse News(ctx, id).Offset(offset).Limit(limit).ApiKey(apiKey).Execute()

Get Game News



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
	offset := int32(56) // int32 |  (default to 0)
	limit := int32(56) // int32 |  (default to 10)
	apiKey := "abc123" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DefaultAPI.News(context.Background(), id).Offset(offset).Limit(limit).ApiKey(apiKey).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.News``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `News`: GameNewsResponse
	fmt.Fprintf(os.Stdout, "Response from `DefaultAPI.News`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiNewsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **offset** | **int32** |  | [default to 0]
 **limit** | **int32** |  | [default to 10]
 **apiKey** | **string** |  | 

### Return type

[**GameNewsResponse**](GameNewsResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Search

> SearchResponse Search(ctx).Query(query).Offset(offset).Limit(limit).Filters(filters).Sort(sort).SortOrder(sortOrder).GenerateFilterOptions(generateFilterOptions).ApiKey(apiKey).Execute()

Search Games



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
	query := "rpg for PC" // string | The search query, e.g., game name, platform, genre, or any combination.
	offset := int32(56) // int32 | The number of results to skip before starting to collect the result set. Between 0 and 1000. (default to 0)
	limit := int32(56) // int32 | The maximum number of results to return between 1 and 10. (default to 10)
	filters := "[{"key":"platform","values":[{"value":"pc"}],"connection":"OR"},{"key":"genre","values":[{"value":"action"}]}]" // string | JSON array of filter objects to apply to the search. (default to "[]")
	sort := "computed_rating" // string | The field by which to sort the results, either computed_rating, price, or release_date
	sortOrder := "asc" // string | The sort order: 'asc' for ascending or 'desc' for descending. (default to "asc")
	generateFilterOptions := true // bool | Whether to generate filter options in the response. (default to true)
	apiKey := "abc123" // string | Your API key for authentication.

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
 **query** | **string** | The search query, e.g., game name, platform, genre, or any combination. | 
 **offset** | **int32** | The number of results to skip before starting to collect the result set. Between 0 and 1000. | [default to 0]
 **limit** | **int32** | The maximum number of results to return between 1 and 10. | [default to 10]
 **filters** | **string** | JSON array of filter objects to apply to the search. | [default to &quot;[]&quot;]
 **sort** | **string** | The field by which to sort the results, either computed_rating, price, or release_date | 
 **sortOrder** | **string** | The sort order: &#39;asc&#39; for ascending or &#39;desc&#39; for descending. | [default to &quot;asc&quot;]
 **generateFilterOptions** | **bool** | Whether to generate filter options in the response. | [default to true]
 **apiKey** | **string** | Your API key for authentication. | 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Similar

> SimilarGamesResponse Similar(ctx, id).Limit(limit).ApiKey(apiKey).Execute()

Get Similar Games



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
	limit := int32(56) // int32 |  (default to 10)
	apiKey := "abc123" // string | 

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

 **limit** | **int32** |  | [default to 10]
 **apiKey** | **string** |  | 

### Return type

[**SimilarGamesResponse**](SimilarGamesResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Suggest

> SearchSuggestionResponse Suggest(ctx).Query(query).Limit(limit).ApiKey(apiKey).Execute()

Get Game Suggestions



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
	query := "gt" // string | The partial search query to get suggestions for.
	limit := int32(56) // int32 | The maximum number of suggestions to return. (default to 10)
	apiKey := "abc123" // string | Your API key for authentication.

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
 **query** | **string** | The partial search query to get suggestions for. | 
 **limit** | **int32** | The maximum number of suggestions to return. | [default to 10]
 **apiKey** | **string** | Your API key for authentication. | 

### Return type

[**SearchSuggestionResponse**](SearchSuggestionResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

