# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.gamebrain.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detail**](DefaultApi.md#detail) | **GET** /games/{id} | Get Game Details
[**search**](DefaultApi.md#search) | **GET** /games | Search Games
[**similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | Get Similar Games
[**suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | Get Game Suggestions


# **detail**
> GameResponse detail(id, apiKey)

Get Game Details

Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final id = 56; // int | The unique identifier of the game.
final apiKey = abc123; // String | Your API key for authentication.

try {
    final result = api_instance.detail(id, apiKey);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->detail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The unique identifier of the game. | 
 **apiKey** | **String**| Your API key for authentication. | 

### Return type

[**GameResponse**](GameResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
> SearchResponse search(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey)

Search Games

Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final query = rpg for PC; // String | The search query, e.g., game name, platform, genre, or any combination.
final offset = 56; // int | The number of results to skip before starting to collect the result set.
final limit = 56; // int | The maximum number of results to return.
final filters = filters_example; // String | JSON array of filter objects to apply to the search.
final sort = computed_rating; // String | The field by which to sort the results.
final sortOrder = asc; // String | The sort order: 'asc' for ascending or 'desc' for descending.
final generateFilterOptions = true; // bool | Whether to generate filter options in the response.
final apiKey = abc123; // String | Your API key for authentication.

try {
    final result = api_instance.search(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->search: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query, e.g., game name, platform, genre, or any combination. | 
 **offset** | **int**| The number of results to skip before starting to collect the result set. | [default to 0]
 **limit** | **int**| The maximum number of results to return. | [default to 48]
 **filters** | **String**| JSON array of filter objects to apply to the search. | [default to '[]']
 **sort** | **String**| The field by which to sort the results. | 
 **sortOrder** | **String**| The sort order: 'asc' for ascending or 'desc' for descending. | [default to 'asc']
 **generateFilterOptions** | **bool**| Whether to generate filter options in the response. | [default to true]
 **apiKey** | **String**| Your API key for authentication. | 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **similar**
> SimilarGamesResponse similar(id, limit, apiKey)

Get Similar Games

Get games that are similar to the given one.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final id = 56; // int | 
final limit = 56; // int | 
final apiKey = abc123; // String | 

try {
    final result = api_instance.similar(id, limit, apiKey);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->similar: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **limit** | **int**|  | [default to 10]
 **apiKey** | **String**|  | 

### Return type

[**SimilarGamesResponse**](SimilarGamesResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **suggest**
> SearchSuggestionResponse suggest(query, limit, apiKey)

Get Game Suggestions

Get game suggestions based on (partial) search queries. For example, the query 'gt' will return games like GTA.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final query = gt; // String | The partial search query to get suggestions for.
final limit = 56; // int | The maximum number of suggestions to return.
final apiKey = abc123; // String | Your API key for authentication.

try {
    final result = api_instance.suggest(query, limit, apiKey);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->suggest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The partial search query to get suggestions for. | 
 **limit** | **int**| The maximum number of suggestions to return. | [default to 10]
 **apiKey** | **String**| Your API key for authentication. | 

### Return type

[**SearchSuggestionResponse**](SearchSuggestionResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

