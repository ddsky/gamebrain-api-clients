# GamebrainJs.DefaultApi

All URIs are relative to *https://api.gamebrain.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detail**](DefaultApi.md#detail) | **GET** /games/{id} | Get Game Details
[**news**](DefaultApi.md#news) | **GET** /games/{id}/news | Get Game News
[**search**](DefaultApi.md#search) | **GET** /games | Search Games
[**similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | Get Similar Games
[**suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | Get Game Suggestions



## detail

> GameResponse detail(id, apiKey)

Get Game Details

Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.

### Example

```javascript
import GamebrainJs from 'gamebrain-js';
let defaultClient = GamebrainJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new GamebrainJs.DefaultApi();
let id = 56; // Number | The unique identifier of the game.
let apiKey = "abc123"; // String | Your API key for authentication.
apiInstance.detail(id, apiKey, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The unique identifier of the game. | 
 **apiKey** | **String**| Your API key for authentication. | 

### Return type

[**GameResponse**](GameResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## news

> GameNewsResponse news(id, offset, limit, apiKey)

Get Game News

Get news related to the given game.

### Example

```javascript
import GamebrainJs from 'gamebrain-js';
let defaultClient = GamebrainJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new GamebrainJs.DefaultApi();
let id = 56; // Number | 
let offset = 0; // Number | 
let limit = 10; // Number | 
let apiKey = "abc123"; // String | 
apiInstance.news(id, offset, limit, apiKey, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**|  | 
 **offset** | **Number**|  | [default to 0]
 **limit** | **Number**|  | [default to 10]
 **apiKey** | **String**|  | 

### Return type

[**GameNewsResponse**](GameNewsResponse.md)

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

```javascript
import GamebrainJs from 'gamebrain-js';
let defaultClient = GamebrainJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new GamebrainJs.DefaultApi();
let query = "rpg for PC"; // String | The search query, e.g., game name, platform, genre, or any combination.
let offset = 0; // Number | The number of results to skip before starting to collect the result set. Between 0 and 1000.
let limit = 10; // Number | The maximum number of results to return between 1 and 10.
let filters = "[{\"key\":\"platform\",\"values\":[{\"value\":\"pc\"}],\"connection\":\"OR\"},{\"key\":\"genre\",\"values\":[{\"value\":\"action\"}]}]"; // String | JSON array of filter objects to apply to the search.
let sort = "computed_rating"; // String | The field by which to sort the results, either computed_rating, price, or release_date
let sortOrder = "asc"; // String | The sort order: 'asc' for ascending or 'desc' for descending.
let generateFilterOptions = true; // Boolean | Whether to generate filter options in the response.
let apiKey = "abc123"; // String | Your API key for authentication.
apiInstance.search(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query, e.g., game name, platform, genre, or any combination. | 
 **offset** | **Number**| The number of results to skip before starting to collect the result set. Between 0 and 1000. | [default to 0]
 **limit** | **Number**| The maximum number of results to return between 1 and 10. | [default to 10]
 **filters** | **String**| JSON array of filter objects to apply to the search. | [default to &#39;[]&#39;]
 **sort** | **String**| The field by which to sort the results, either computed_rating, price, or release_date | 
 **sortOrder** | **String**| The sort order: &#39;asc&#39; for ascending or &#39;desc&#39; for descending. | [default to &#39;asc&#39;]
 **generateFilterOptions** | **Boolean**| Whether to generate filter options in the response. | [default to true]
 **apiKey** | **String**| Your API key for authentication. | 

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

```javascript
import GamebrainJs from 'gamebrain-js';
let defaultClient = GamebrainJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new GamebrainJs.DefaultApi();
let id = 56; // Number | 
let limit = 10; // Number | 
let apiKey = "abc123"; // String | 
apiInstance.similar(id, limit, apiKey, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**|  | 
 **limit** | **Number**|  | [default to 10]
 **apiKey** | **String**|  | 

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

```javascript
import GamebrainJs from 'gamebrain-js';
let defaultClient = GamebrainJs.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new GamebrainJs.DefaultApi();
let query = "gt"; // String | The partial search query to get suggestions for.
let limit = 10; // Number | The maximum number of suggestions to return.
let apiKey = "abc123"; // String | Your API key for authentication.
apiInstance.suggest(query, limit, apiKey, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The partial search query to get suggestions for. | 
 **limit** | **Number**| The maximum number of suggestions to return. | [default to 10]
 **apiKey** | **String**| Your API key for authentication. | 

### Return type

[**SearchSuggestionResponse**](SearchSuggestionResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

