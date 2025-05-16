# OpenAPI\Client\DefaultApi

All URIs are relative to https://api.gamebrain.co/v1, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**detail()**](DefaultApi.md#detail) | **GET** /games/{id} | GET v1/games/{id} |
| [**search()**](DefaultApi.md#search) | **GET** /games | GET v1/games |
| [**similar()**](DefaultApi.md#similar) | **GET** /games/{id}/similar | GET v1/games/{id}/similar |
| [**suggest()**](DefaultApi.md#suggest) | **GET** /games/suggestions | GET v1/games/suggestions |


## `detail()`

```php
detail($id, $api_key): \OpenAPI\Client\Model\GameResponse
```

GET v1/games/{id}

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 56; // int
$api_key = 'api_key_example'; // string

try {
    $result = $apiInstance->detail($id, $api_key);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->detail: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **api_key** | **string**|  | |

### Return type

[**\OpenAPI\Client\Model\GameResponse**](../Model/GameResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `search()`

```php
search($query, $offset, $limit, $filters, $sort, $sort_order, $generate_filter_options, $api_key): \OpenAPI\Client\Model\SearchResponse
```

GET v1/games

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$query = 'query_example'; // string
$offset = 56; // int
$limit = 56; // int
$filters = '[]'; // string
$sort = 'sort_example'; // string
$sort_order = 'asc'; // string
$generate_filter_options = true; // bool
$api_key = 'api_key_example'; // string

try {
    $result = $apiInstance->search($query, $offset, $limit, $filters, $sort, $sort_order, $generate_filter_options, $api_key);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->search: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **query** | **string**|  | |
| **offset** | **int**|  | |
| **limit** | **int**|  | |
| **filters** | **string**|  | [default to &#39;[]&#39;] |
| **sort** | **string**|  | |
| **sort_order** | **string**|  | [default to &#39;asc&#39;] |
| **generate_filter_options** | **bool**|  | [default to true] |
| **api_key** | **string**|  | |

### Return type

[**\OpenAPI\Client\Model\SearchResponse**](../Model/SearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `similar()`

```php
similar($id, $limit, $api_key): \OpenAPI\Client\Model\SimilarGamesResponse
```

GET v1/games/{id}/similar

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 56; // int
$limit = 56; // int
$api_key = 'api_key_example'; // string

try {
    $result = $apiInstance->similar($id, $limit, $api_key);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->similar: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |
| **limit** | **int**|  | |
| **api_key** | **string**|  | |

### Return type

[**\OpenAPI\Client\Model\SimilarGamesResponse**](../Model/SimilarGamesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `suggest()`

```php
suggest($query, $limit, $api_key): \OpenAPI\Client\Model\SearchSuggestionResponse
```

GET v1/games/suggestions

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$query = 'query_example'; // string
$limit = 56; // int
$api_key = 'api_key_example'; // string

try {
    $result = $apiInstance->suggest($query, $limit, $api_key);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->suggest: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **query** | **string**|  | |
| **limit** | **int**|  | |
| **api_key** | **string**|  | |

### Return type

[**\OpenAPI\Client\Model\SearchSuggestionResponse**](../Model/SearchSuggestionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
