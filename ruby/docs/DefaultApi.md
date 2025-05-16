# OpenapiClient::DefaultApi

All URIs are relative to *https://api.gamebrain.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**detail**](DefaultApi.md#detail) | **GET** /games/{id} | GET v1/games/{id} |
| [**search**](DefaultApi.md#search) | **GET** /games | GET v1/games |
| [**similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | GET v1/games/{id}/similar |
| [**suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | GET v1/games/suggestions |


## detail

> <GameResponse> detail(id, api_key)

GET v1/games/{id}

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DefaultApi.new
id = 56 # Integer | 
api_key = 'api_key_example' # String | 

begin
  # GET v1/games/{id}
  result = api_instance.detail(id, api_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->detail: #{e}"
end
```

#### Using the detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GameResponse>, Integer, Hash)> detail_with_http_info(id, api_key)

```ruby
begin
  # GET v1/games/{id}
  data, status_code, headers = api_instance.detail_with_http_info(id, api_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GameResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **api_key** | **String** |  |  |

### Return type

[**GameResponse**](GameResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search

> <SearchResponse> search(query, offset, limit, filters, sort, sort_order, generate_filter_options, api_key)

GET v1/games

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DefaultApi.new
query = 'query_example' # String | 
offset = 56 # Integer | 
limit = 56 # Integer | 
filters = 'filters_example' # String | 
sort = 'sort_example' # String | 
sort_order = 'sort_order_example' # String | 
generate_filter_options = true # Boolean | 
api_key = 'api_key_example' # String | 

begin
  # GET v1/games
  result = api_instance.search(query, offset, limit, filters, sort, sort_order, generate_filter_options, api_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->search: #{e}"
end
```

#### Using the search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchResponse>, Integer, Hash)> search_with_http_info(query, offset, limit, filters, sort, sort_order, generate_filter_options, api_key)

```ruby
begin
  # GET v1/games
  data, status_code, headers = api_instance.search_with_http_info(query, offset, limit, filters, sort, sort_order, generate_filter_options, api_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** |  |  |
| **offset** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **filters** | **String** |  | [default to &#39;[]&#39;] |
| **sort** | **String** |  |  |
| **sort_order** | **String** |  | [default to &#39;asc&#39;] |
| **generate_filter_options** | **Boolean** |  | [default to true] |
| **api_key** | **String** |  |  |

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## similar

> <SimilarGamesResponse> similar(id, limit, api_key)

GET v1/games/{id}/similar

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DefaultApi.new
id = 56 # Integer | 
limit = 56 # Integer | 
api_key = 'api_key_example' # String | 

begin
  # GET v1/games/{id}/similar
  result = api_instance.similar(id, limit, api_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->similar: #{e}"
end
```

#### Using the similar_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SimilarGamesResponse>, Integer, Hash)> similar_with_http_info(id, limit, api_key)

```ruby
begin
  # GET v1/games/{id}/similar
  data, status_code, headers = api_instance.similar_with_http_info(id, limit, api_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SimilarGamesResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->similar_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **api_key** | **String** |  |  |

### Return type

[**SimilarGamesResponse**](SimilarGamesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## suggest

> <SearchSuggestionResponse> suggest(query, limit, api_key)

GET v1/games/suggestions

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DefaultApi.new
query = 'query_example' # String | 
limit = 56 # Integer | 
api_key = 'api_key_example' # String | 

begin
  # GET v1/games/suggestions
  result = api_instance.suggest(query, limit, api_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->suggest: #{e}"
end
```

#### Using the suggest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchSuggestionResponse>, Integer, Hash)> suggest_with_http_info(query, limit, api_key)

```ruby
begin
  # GET v1/games/suggestions
  data, status_code, headers = api_instance.suggest_with_http_info(query, limit, api_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchSuggestionResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->suggest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** |  |  |
| **limit** | **Integer** |  |  |
| **api_key** | **String** |  |  |

### Return type

[**SearchSuggestionResponse**](SearchSuggestionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

