# GamebrainJs.DefaultApi

All URIs are relative to *https://api.gamebrain.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detail**](DefaultApi.md#detail) | **GET** /games/{id} | GET v1/games/{id}
[**search**](DefaultApi.md#search) | **GET** /games | GET v1/games
[**similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | GET v1/games/{id}/similar
[**suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | GET v1/games/suggestions



## detail

> GameResponse detail(id, apiKey)

GET v1/games/{id}

### Example

```javascript
import GamebrainJs from 'gamebrain-js';

let apiInstance = new GamebrainJs.DefaultApi();
let id = 56; // Number | 
let apiKey = "apiKey_example"; // String | 
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
 **id** | **Number**|  | 
 **apiKey** | **String**|  | 

### Return type

[**GameResponse**](GameResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search

> SearchResponse search(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey)

GET v1/games

### Example

```javascript
import GamebrainJs from 'gamebrain-js';

let apiInstance = new GamebrainJs.DefaultApi();
let query = "query_example"; // String | 
let offset = 56; // Number | 
let limit = 56; // Number | 
let filters = "'[]'"; // String | 
let sort = "sort_example"; // String | 
let sortOrder = "'asc'"; // String | 
let generateFilterOptions = true; // Boolean | 
let apiKey = "apiKey_example"; // String | 
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
 **query** | **String**|  | 
 **offset** | **Number**|  | 
 **limit** | **Number**|  | 
 **filters** | **String**|  | [default to &#39;[]&#39;]
 **sort** | **String**|  | 
 **sortOrder** | **String**|  | [default to &#39;asc&#39;]
 **generateFilterOptions** | **Boolean**|  | [default to true]
 **apiKey** | **String**|  | 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## similar

> SimilarGamesResponse similar(id, limit, apiKey)

GET v1/games/{id}/similar

### Example

```javascript
import GamebrainJs from 'gamebrain-js';

let apiInstance = new GamebrainJs.DefaultApi();
let id = 56; // Number | 
let limit = 56; // Number | 
let apiKey = "apiKey_example"; // String | 
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
 **limit** | **Number**|  | 
 **apiKey** | **String**|  | 

### Return type

[**SimilarGamesResponse**](SimilarGamesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## suggest

> SearchSuggestionResponse suggest(query, limit, apiKey)

GET v1/games/suggestions

### Example

```javascript
import GamebrainJs from 'gamebrain-js';

let apiInstance = new GamebrainJs.DefaultApi();
let query = "query_example"; // String | 
let limit = 56; // Number | 
let apiKey = "apiKey_example"; // String | 
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
 **query** | **String**|  | 
 **limit** | **Number**|  | 
 **apiKey** | **String**|  | 

### Return type

[**SearchSuggestionResponse**](SearchSuggestionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

