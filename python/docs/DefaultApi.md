# gamebrain.DefaultApi

All URIs are relative to *https://api.gamebrain.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detail**](DefaultApi.md#detail) | **GET** /games/{id} | Get Game Details
[**news**](DefaultApi.md#news) | **GET** /games/{id}/news | Get Game News
[**search**](DefaultApi.md#search) | **GET** /games | Search Games
[**similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | Get Similar Games
[**suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | Get Game Suggestions


# **detail**
> GameResponse detail(id, api_key)

Get Game Details

Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import gamebrain
from gamebrain.models.game_response import GameResponse
from gamebrain.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.gamebrain.co/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = gamebrain.Configuration(
    host = "https://api.gamebrain.co/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with gamebrain.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = gamebrain.DefaultApi(api_client)
    id = 56 # int | The unique identifier of the game.
    api_key = 'abc123' # str | Your API key for authentication.

    try:
        # Get Game Details
        api_response = api_instance.detail(id, api_key)
        print("The response of DefaultApi->detail:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->detail: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The unique identifier of the game. | 
 **api_key** | **str**| Your API key for authentication. | 

### Return type

[**GameResponse**](GameResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **news**
> GameNewsResponse news(id, offset, limit, api_key)

Get Game News

Get news related to the given game.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import gamebrain
from gamebrain.models.game_news_response import GameNewsResponse
from gamebrain.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.gamebrain.co/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = gamebrain.Configuration(
    host = "https://api.gamebrain.co/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with gamebrain.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = gamebrain.DefaultApi(api_client)
    id = 56 # int | 
    offset = 0 # int |  (default to 0)
    limit = 10 # int |  (default to 10)
    api_key = 'abc123' # str | 

    try:
        # Get Game News
        api_response = api_instance.news(id, offset, limit, api_key)
        print("The response of DefaultApi->news:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->news: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **offset** | **int**|  | [default to 0]
 **limit** | **int**|  | [default to 10]
 **api_key** | **str**|  | 

### Return type

[**GameNewsResponse**](GameNewsResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
> SearchResponse search(query, offset, limit, filters, sort, sort_order, generate_filter_options, api_key)

Search Games

Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import gamebrain
from gamebrain.models.search_response import SearchResponse
from gamebrain.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.gamebrain.co/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = gamebrain.Configuration(
    host = "https://api.gamebrain.co/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with gamebrain.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = gamebrain.DefaultApi(api_client)
    query = 'rpg for PC' # str | The search query, e.g., game name, platform, genre, or any combination.
    offset = 0 # int | The number of results to skip before starting to collect the result set. Between 0 and 1000. (default to 0)
    limit = 10 # int | The maximum number of results to return between 1 and 10. (default to 10)
    filters = '[]' # str | JSON array of filter objects to apply to the search. (default to '[]')
    sort = 'computed_rating' # str | The field by which to sort the results, either computed_rating, price, or release_date
    sort_order = 'asc' # str | The sort order: 'asc' for ascending or 'desc' for descending. (default to 'asc')
    generate_filter_options = True # bool | Whether to generate filter options in the response. (default to True)
    api_key = 'abc123' # str | Your API key for authentication.

    try:
        # Search Games
        api_response = api_instance.search(query, offset, limit, filters, sort, sort_order, generate_filter_options, api_key)
        print("The response of DefaultApi->search:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->search: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The search query, e.g., game name, platform, genre, or any combination. | 
 **offset** | **int**| The number of results to skip before starting to collect the result set. Between 0 and 1000. | [default to 0]
 **limit** | **int**| The maximum number of results to return between 1 and 10. | [default to 10]
 **filters** | **str**| JSON array of filter objects to apply to the search. | [default to &#39;[]&#39;]
 **sort** | **str**| The field by which to sort the results, either computed_rating, price, or release_date | 
 **sort_order** | **str**| The sort order: &#39;asc&#39; for ascending or &#39;desc&#39; for descending. | [default to &#39;asc&#39;]
 **generate_filter_options** | **bool**| Whether to generate filter options in the response. | [default to True]
 **api_key** | **str**| Your API key for authentication. | 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **similar**
> SimilarGamesResponse similar(id, limit, api_key)

Get Similar Games

Get games that are similar to the given one.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import gamebrain
from gamebrain.models.similar_games_response import SimilarGamesResponse
from gamebrain.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.gamebrain.co/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = gamebrain.Configuration(
    host = "https://api.gamebrain.co/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with gamebrain.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = gamebrain.DefaultApi(api_client)
    id = 56 # int | 
    limit = 10 # int |  (default to 10)
    api_key = 'abc123' # str | 

    try:
        # Get Similar Games
        api_response = api_instance.similar(id, limit, api_key)
        print("The response of DefaultApi->similar:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->similar: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **limit** | **int**|  | [default to 10]
 **api_key** | **str**|  | 

### Return type

[**SimilarGamesResponse**](SimilarGamesResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **suggest**
> SearchSuggestionResponse suggest(query, limit, api_key)

Get Game Suggestions

Get game suggestions based on (partial) search queries. For example, the query 'gt' will return games like GTA.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import gamebrain
from gamebrain.models.search_suggestion_response import SearchSuggestionResponse
from gamebrain.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.gamebrain.co/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = gamebrain.Configuration(
    host = "https://api.gamebrain.co/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with gamebrain.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = gamebrain.DefaultApi(api_client)
    query = 'gt' # str | The partial search query to get suggestions for.
    limit = 10 # int | The maximum number of suggestions to return. (default to 10)
    api_key = 'abc123' # str | Your API key for authentication.

    try:
        # Get Game Suggestions
        api_response = api_instance.suggest(query, limit, api_key)
        print("The response of DefaultApi->suggest:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->suggest: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The partial search query to get suggestions for. | 
 **limit** | **int**| The maximum number of suggestions to return. | [default to 10]
 **api_key** | **str**| Your API key for authentication. | 

### Return type

[**SearchSuggestionResponse**](SearchSuggestionResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

