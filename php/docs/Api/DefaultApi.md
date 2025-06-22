# OpenAPI\Client\DefaultApi

All URIs are relative to https://api.gamebrain.co/v1, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**detail()**](DefaultApi.md#detail) | **GET** /games/{id} | Get Game Details |
| [**search()**](DefaultApi.md#search) | **GET** /games | Search Games |
| [**similar()**](DefaultApi.md#similar) | **GET** /games/{id}/similar | Get Similar Games |
| [**suggest()**](DefaultApi.md#suggest) | **GET** /games/suggestions | Get Game Suggestions |


## `detail()`

```php
detail($id, $api_key): \OpenAPI\Client\Model\GameResponse
```

Get Game Details

Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | The unique identifier of the game.
$api_key = abc123; // string | Your API key for authentication.

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
| **id** | **int**| The unique identifier of the game. | |
| **api_key** | **string**| Your API key for authentication. | |

### Return type

[**\OpenAPI\Client\Model\GameResponse**](../Model/GameResponse.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

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

Search Games

Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = rpg for PC; // string | The search query, e.g., game name, platform, genre, or any combination.
$offset = 0; // int | The number of results to skip before starting to collect the result set.
$limit = 48; // int | The maximum number of results to return.
$filters = '[]'; // string | JSON array of filter objects to apply to the search.
$sort = computed_rating; // string | The field by which to sort the results.
$sort_order = asc; // string | The sort order: 'asc' for ascending or 'desc' for descending.
$generate_filter_options = true; // bool | Whether to generate filter options in the response.
$api_key = abc123; // string | Your API key for authentication.

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
| **query** | **string**| The search query, e.g., game name, platform, genre, or any combination. | |
| **offset** | **int**| The number of results to skip before starting to collect the result set. | [default to 0] |
| **limit** | **int**| The maximum number of results to return. | [default to 48] |
| **filters** | **string**| JSON array of filter objects to apply to the search. | [default to &#39;[]&#39;] |
| **sort** | **string**| The field by which to sort the results. | |
| **sort_order** | **string**| The sort order: &#39;asc&#39; for ascending or &#39;desc&#39; for descending. | [default to &#39;asc&#39;] |
| **generate_filter_options** | **bool**| Whether to generate filter options in the response. | [default to true] |
| **api_key** | **string**| Your API key for authentication. | |

### Return type

[**\OpenAPI\Client\Model\SearchResponse**](../Model/SearchResponse.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

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

Get Similar Games

Get games that are similar to the given one.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int
$limit = 10; // int
$api_key = abc123; // string

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
| **limit** | **int**|  | [default to 10] |
| **api_key** | **string**|  | |

### Return type

[**\OpenAPI\Client\Model\SimilarGamesResponse**](../Model/SimilarGamesResponse.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

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

Get Game Suggestions

Get game suggestions based on (partial) search queries. For example, the query 'gt' will return games like GTA.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = gt; // string | The partial search query to get suggestions for.
$limit = 10; // int | The maximum number of suggestions to return.
$api_key = abc123; // string | Your API key for authentication.

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
| **query** | **string**| The partial search query to get suggestions for. | |
| **limit** | **int**| The maximum number of suggestions to return. | [default to 10] |
| **api_key** | **string**| Your API key for authentication. | |

### Return type

[**\OpenAPI\Client\Model\SearchSuggestionResponse**](../Model/SearchSuggestionResponse.md)

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
