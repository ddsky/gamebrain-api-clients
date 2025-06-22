# .DefaultApi

All URIs are relative to *https://api.gamebrain.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detail**](DefaultApi.md#detail) | **GET** /games/{id} | Get Game Details
[**search**](DefaultApi.md#search) | **GET** /games | Search Games
[**similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | Get Similar Games
[**suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | Get Game Suggestions


# **detail**
> GameResponse detail()

Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .DefaultApi(configuration);

let body:.DefaultApiDetailRequest = {
  // number | The unique identifier of the game.
  id: 1,
  // string | Your API key for authentication.
  apiKey: "abc123",
};

apiInstance.detail(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The unique identifier of the game. | defaults to undefined
 **apiKey** | [**string**] | Your API key for authentication. | defaults to undefined


### Return type

**GameResponse**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **search**
> SearchResponse search()

Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .DefaultApi(configuration);

let body:.DefaultApiSearchRequest = {
  // string | The search query, e.g., game name, platform, genre, or any combination.
  query: "rpg for PC",
  // number | The number of results to skip before starting to collect the result set.
  offset: 0,
  // number | The maximum number of results to return.
  limit: 48,
  // string | JSON array of filter objects to apply to the search.
  filters: "[]",
  // string | The field by which to sort the results.
  sort: "computed_rating",
  // string | The sort order: \'asc\' for ascending or \'desc\' for descending.
  sortOrder: "asc",
  // boolean | Whether to generate filter options in the response.
  generateFilterOptions: true,
  // string | Your API key for authentication.
  apiKey: "abc123",
};

apiInstance.search(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The search query, e.g., game name, platform, genre, or any combination. | defaults to undefined
 **offset** | [**number**] | The number of results to skip before starting to collect the result set. | defaults to 0
 **limit** | [**number**] | The maximum number of results to return. | defaults to 48
 **filters** | [**string**] | JSON array of filter objects to apply to the search. | defaults to '[]'
 **sort** | [**string**] | The field by which to sort the results. | defaults to undefined
 **sortOrder** | [**string**] | The sort order: \&#39;asc\&#39; for ascending or \&#39;desc\&#39; for descending. | defaults to 'asc'
 **generateFilterOptions** | [**boolean**] | Whether to generate filter options in the response. | defaults to true
 **apiKey** | [**string**] | Your API key for authentication. | defaults to undefined


### Return type

**SearchResponse**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **similar**
> SimilarGamesResponse similar()

Get games that are similar to the given one.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .DefaultApi(configuration);

let body:.DefaultApiSimilarRequest = {
  // number
  id: 1,
  // number
  limit: 10,
  // string
  apiKey: "abc123",
};

apiInstance.similar(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] |  | defaults to undefined
 **limit** | [**number**] |  | defaults to 10
 **apiKey** | [**string**] |  | defaults to undefined


### Return type

**SimilarGamesResponse**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **suggest**
> SearchSuggestionResponse suggest()

Get game suggestions based on (partial) search queries. For example, the query \'gt\' will return games like GTA.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .DefaultApi(configuration);

let body:.DefaultApiSuggestRequest = {
  // string | The partial search query to get suggestions for.
  query: "gt",
  // number | The maximum number of suggestions to return.
  limit: 10,
  // string | Your API key for authentication.
  apiKey: "abc123",
};

apiInstance.suggest(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The partial search query to get suggestions for. | defaults to undefined
 **limit** | [**number**] | The maximum number of suggestions to return. | defaults to 10
 **apiKey** | [**string**] | Your API key for authentication. | defaults to undefined


### Return type

**SearchSuggestionResponse**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


