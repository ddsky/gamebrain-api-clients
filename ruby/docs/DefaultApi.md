# OpenapiClient::DefaultApi

All URIs are relative to *https://api.gamebrain.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**detail**](DefaultApi.md#detail) | **GET** /games/{id} | Get Game Details |
| [**search**](DefaultApi.md#search) | **GET** /games | Search Games |
| [**similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | Get Similar Games |
| [**suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | Get Game Suggestions |


## detail

> <GameResponse> detail(id, api_key)

Get Game Details

Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
id = 56 # Integer | The unique identifier of the game.
api_key = 'abc123' # String | Your API key for authentication.

begin
  # Get Game Details
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
  # Get Game Details
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
| **id** | **Integer** | The unique identifier of the game. |  |
| **api_key** | **String** | Your API key for authentication. |  |

### Return type

[**GameResponse**](GameResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search

> <SearchResponse> search(query, offset, limit, filters, sort, sort_order, generate_filter_options, api_key)

Search Games

Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
query = 'rpg for PC' # String | The search query, e.g., game name, platform, genre, or any combination.
offset = 56 # Integer | The number of results to skip before starting to collect the result set.
limit = 56 # Integer | The maximum number of results to return.
filters = 'filters_example' # String | JSON array of filter objects to apply to the search.
sort = 'computed_rating' # String | The field by which to sort the results.
sort_order = 'asc' # String | The sort order: 'asc' for ascending or 'desc' for descending.
generate_filter_options = true # Boolean | Whether to generate filter options in the response.
api_key = 'abc123' # String | Your API key for authentication.

begin
  # Search Games
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
  # Search Games
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
| **query** | **String** | The search query, e.g., game name, platform, genre, or any combination. |  |
| **offset** | **Integer** | The number of results to skip before starting to collect the result set. | [default to 0] |
| **limit** | **Integer** | The maximum number of results to return. | [default to 48] |
| **filters** | **String** | JSON array of filter objects to apply to the search. | [default to &#39;[]&#39;] |
| **sort** | **String** | The field by which to sort the results. |  |
| **sort_order** | **String** | The sort order: &#39;asc&#39; for ascending or &#39;desc&#39; for descending. | [default to &#39;asc&#39;] |
| **generate_filter_options** | **Boolean** | Whether to generate filter options in the response. | [default to true] |
| **api_key** | **String** | Your API key for authentication. |  |

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## similar

> <SimilarGamesResponse> similar(id, limit, api_key)

Get Similar Games

Get games that are similar to the given one.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
id = 56 # Integer | 
limit = 56 # Integer | 
api_key = 'abc123' # String | 

begin
  # Get Similar Games
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
  # Get Similar Games
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
| **limit** | **Integer** |  | [default to 10] |
| **api_key** | **String** |  |  |

### Return type

[**SimilarGamesResponse**](SimilarGamesResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## suggest

> <SearchSuggestionResponse> suggest(query, limit, api_key)

Get Game Suggestions

Get game suggestions based on (partial) search queries. For example, the query 'gt' will return games like GTA.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
query = 'gt' # String | The partial search query to get suggestions for.
limit = 56 # Integer | The maximum number of suggestions to return.
api_key = 'abc123' # String | Your API key for authentication.

begin
  # Get Game Suggestions
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
  # Get Game Suggestions
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
| **query** | **String** | The partial search query to get suggestions for. |  |
| **limit** | **Integer** | The maximum number of suggestions to return. | [default to 10] |
| **api_key** | **String** | Your API key for authentication. |  |

### Return type

[**SearchSuggestionResponse**](SearchSuggestionResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

