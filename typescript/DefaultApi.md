# .DefaultApi

All URIs are relative to *https://api.gamebrain.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detail**](DefaultApi.md#detail) | **GET** /games/{id} | GET v1/games/{id}
[**search**](DefaultApi.md#search) | **GET** /games | GET v1/games
[**similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | GET v1/games/{id}/similar
[**suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | GET v1/games/suggestions


# **detail**
> GameResponse detail()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .DefaultApi(configuration);

let body:.DefaultApiDetailRequest = {
  // number
  id: 1,
  // string
  apiKey: "api-key_example",
};

apiInstance.detail(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] |  | defaults to undefined
 **apiKey** | [**string**] |  | defaults to undefined


### Return type

**GameResponse**

### Authorization

No authorization required

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


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .DefaultApi(configuration);

let body:.DefaultApiSearchRequest = {
  // string
  query: "query_example",
  // number
  offset: 1,
  // number
  limit: 1,
  // string
  filters: "[]",
  // string
  sort: "sort_example",
  // string
  sortOrder: "asc",
  // boolean
  generateFilterOptions: true,
  // string
  apiKey: "api-key_example",
};

apiInstance.search(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] |  | defaults to undefined
 **offset** | [**number**] |  | defaults to undefined
 **limit** | [**number**] |  | defaults to undefined
 **filters** | [**string**] |  | defaults to '[]'
 **sort** | [**string**] |  | defaults to undefined
 **sortOrder** | [**string**] |  | defaults to 'asc'
 **generateFilterOptions** | [**boolean**] |  | defaults to true
 **apiKey** | [**string**] |  | defaults to undefined


### Return type

**SearchResponse**

### Authorization

No authorization required

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
  limit: 1,
  // string
  apiKey: "api-key_example",
};

apiInstance.similar(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] |  | defaults to undefined
 **limit** | [**number**] |  | defaults to undefined
 **apiKey** | [**string**] |  | defaults to undefined


### Return type

**SimilarGamesResponse**

### Authorization

No authorization required

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


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .DefaultApi(configuration);

let body:.DefaultApiSuggestRequest = {
  // string
  query: "query_example",
  // number
  limit: 1,
  // string
  apiKey: "api-key_example",
};

apiInstance.suggest(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] |  | defaults to undefined
 **limit** | [**number**] |  | defaults to undefined
 **apiKey** | [**string**] |  | defaults to undefined


### Return type

**SearchSuggestionResponse**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


