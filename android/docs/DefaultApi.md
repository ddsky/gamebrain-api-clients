# DefaultApi

All URIs are relative to *https://api.gamebrain.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detail**](DefaultApi.md#detail) | **GET** /games/{id} | Get Game Details
[**search**](DefaultApi.md#search) | **GET** /games | Search Games
[**similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | Get Similar Games
[**suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | Get Game Suggestions



## detail

> GameResponse detail(id, apiKey)

Get Game Details

Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.

### Example

```java
// Import classes:
//import co.gamebrain.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
Integer id = null; // Integer | The unique identifier of the game.
String apiKey = abc123; // String | Your API key for authentication.
try {
    GameResponse result = apiInstance.detail(id, apiKey);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#detail");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The unique identifier of the game. | [default to null]
 **apiKey** | **String**| Your API key for authentication. | [default to null]

### Return type

[**GameResponse**](GameResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search

> SearchResponse search(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey)

Search Games

Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination

### Example

```java
// Import classes:
//import co.gamebrain.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
String query = rpg for PC; // String | The search query, e.g., game name, platform, genre, or any combination.
Integer offset = 0; // Integer | The number of results to skip before starting to collect the result set.
Integer limit = 48; // Integer | The maximum number of results to return.
String filters = []; // String | JSON array of filter objects to apply to the search.
String sort = computed_rating; // String | The field by which to sort the results.
String sortOrder = asc; // String | The sort order: 'asc' for ascending or 'desc' for descending.
Boolean generateFilterOptions = true; // Boolean | Whether to generate filter options in the response.
String apiKey = abc123; // String | Your API key for authentication.
try {
    SearchResponse result = apiInstance.search(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#search");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query, e.g., game name, platform, genre, or any combination. | [default to null]
 **offset** | **Integer**| The number of results to skip before starting to collect the result set. | [default to 0]
 **limit** | **Integer**| The maximum number of results to return. | [default to 48]
 **filters** | **String**| JSON array of filter objects to apply to the search. | [default to []]
 **sort** | **String**| The field by which to sort the results. | [default to null]
 **sortOrder** | **String**| The sort order: &#39;asc&#39; for ascending or &#39;desc&#39; for descending. | [default to asc]
 **generateFilterOptions** | **Boolean**| Whether to generate filter options in the response. | [default to true]
 **apiKey** | **String**| Your API key for authentication. | [default to null]

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## similar

> SimilarGamesResponse similar(id, limit, apiKey)

Get Similar Games

Get games that are similar to the given one.

### Example

```java
// Import classes:
//import co.gamebrain.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
Integer id = null; // Integer | 
Integer limit = 10; // Integer | 
String apiKey = abc123; // String | 
try {
    SimilarGamesResponse result = apiInstance.similar(id, limit, apiKey);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#similar");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | [default to null]
 **limit** | **Integer**|  | [default to 10]
 **apiKey** | **String**|  | [default to null]

### Return type

[**SimilarGamesResponse**](SimilarGamesResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## suggest

> SearchSuggestionResponse suggest(query, limit, apiKey)

Get Game Suggestions

Get game suggestions based on (partial) search queries. For example, the query &#39;gt&#39; will return games like GTA.

### Example

```java
// Import classes:
//import co.gamebrain.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
String query = gt; // String | The partial search query to get suggestions for.
Integer limit = 10; // Integer | The maximum number of suggestions to return.
String apiKey = abc123; // String | Your API key for authentication.
try {
    SearchSuggestionResponse result = apiInstance.suggest(query, limit, apiKey);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#suggest");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The partial search query to get suggestions for. | [default to null]
 **limit** | **Integer**| The maximum number of suggestions to return. | [default to 10]
 **apiKey** | **String**| Your API key for authentication. | [default to null]

### Return type

[**SearchSuggestionResponse**](SearchSuggestionResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

