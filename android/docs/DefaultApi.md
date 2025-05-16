# DefaultApi

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

```java
// Import classes:
//import co.gamebrain.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
Integer id = null; // Integer | 
String apiKey = null; // String | 
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
 **id** | **Integer**|  | [default to null]
 **apiKey** | **String**|  | [default to null]

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

```java
// Import classes:
//import co.gamebrain.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
String query = null; // String | 
Integer offset = null; // Integer | 
Integer limit = null; // Integer | 
String filters = []; // String | 
String sort = null; // String | 
String sortOrder = asc; // String | 
Boolean generateFilterOptions = true; // Boolean | 
String apiKey = null; // String | 
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
 **query** | **String**|  | [default to null]
 **offset** | **Integer**|  | [default to null]
 **limit** | **Integer**|  | [default to null]
 **filters** | **String**|  | [default to []]
 **sort** | **String**|  | [default to null]
 **sortOrder** | **String**|  | [default to asc]
 **generateFilterOptions** | **Boolean**|  | [default to true]
 **apiKey** | **String**|  | [default to null]

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

```java
// Import classes:
//import co.gamebrain.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
Integer id = null; // Integer | 
Integer limit = null; // Integer | 
String apiKey = null; // String | 
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
 **limit** | **Integer**|  | [default to null]
 **apiKey** | **String**|  | [default to null]

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

```java
// Import classes:
//import co.gamebrain.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
String query = null; // String | 
Integer limit = null; // Integer | 
String apiKey = null; // String | 
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
 **query** | **String**|  | [default to null]
 **limit** | **Integer**|  | [default to null]
 **apiKey** | **String**|  | [default to null]

### Return type

[**SearchSuggestionResponse**](SearchSuggestionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

