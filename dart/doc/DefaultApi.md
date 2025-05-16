# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.gamebrain.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detail**](DefaultApi.md#detail) | **GET** /games/{id} | GET v1/games/{id}
[**search**](DefaultApi.md#search) | **GET** /games | GET v1/games
[**similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | GET v1/games/{id}/similar
[**suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | GET v1/games/suggestions


# **detail**
> GameResponse detail(id, apiKey)

GET v1/games/{id}

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final id = 56; // int | 
final apiKey = apiKey_example; // String | 

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
 **id** | **int**|  | 
 **apiKey** | **String**|  | 

### Return type

[**GameResponse**](GameResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
> SearchResponse search(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey)

GET v1/games

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final query = query_example; // String | 
final offset = 56; // int | 
final limit = 56; // int | 
final filters = filters_example; // String | 
final sort = sort_example; // String | 
final sortOrder = sortOrder_example; // String | 
final generateFilterOptions = true; // bool | 
final apiKey = apiKey_example; // String | 

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
 **query** | **String**|  | 
 **offset** | **int**|  | 
 **limit** | **int**|  | 
 **filters** | **String**|  | [default to '[]']
 **sort** | **String**|  | 
 **sortOrder** | **String**|  | [default to 'asc']
 **generateFilterOptions** | **bool**|  | [default to true]
 **apiKey** | **String**|  | 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **similar**
> SimilarGamesResponse similar(id, limit, apiKey)

GET v1/games/{id}/similar

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final id = 56; // int | 
final limit = 56; // int | 
final apiKey = apiKey_example; // String | 

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
 **limit** | **int**|  | 
 **apiKey** | **String**|  | 

### Return type

[**SimilarGamesResponse**](SimilarGamesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **suggest**
> SearchSuggestionResponse suggest(query, limit, apiKey)

GET v1/games/suggestions

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final query = query_example; // String | 
final limit = 56; // int | 
final apiKey = apiKey_example; // String | 

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
 **query** | **String**|  | 
 **limit** | **int**|  | 
 **apiKey** | **String**|  | 

### Return type

[**SearchSuggestionResponse**](SearchSuggestionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

