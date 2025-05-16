# gamebrain.DefaultApi

All URIs are relative to *https://api.gamebrain.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detail**](DefaultApi.md#detail) | **GET** /games/{id} | GET v1/games/{id}
[**search**](DefaultApi.md#search) | **GET** /games | GET v1/games
[**similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | GET v1/games/{id}/similar
[**suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | GET v1/games/suggestions


# **detail**
> GameResponse detail(id, api_key)

GET v1/games/{id}

### Example


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


# Enter a context with an instance of the API client
with gamebrain.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = gamebrain.DefaultApi(api_client)
    id = 56 # int | 
    api_key = 'api_key_example' # str | 

    try:
        # GET v1/games/{id}
        api_response = api_instance.detail(id, api_key)
        print("The response of DefaultApi->detail:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->detail: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **api_key** | **str**|  | 

### Return type

[**GameResponse**](GameResponse.md)

### Authorization

No authorization required

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

GET v1/games

### Example


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


# Enter a context with an instance of the API client
with gamebrain.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = gamebrain.DefaultApi(api_client)
    query = 'query_example' # str | 
    offset = 56 # int | 
    limit = 56 # int | 
    filters = '[]' # str |  (default to '[]')
    sort = 'sort_example' # str | 
    sort_order = 'asc' # str |  (default to 'asc')
    generate_filter_options = True # bool |  (default to True)
    api_key = 'api_key_example' # str | 

    try:
        # GET v1/games
        api_response = api_instance.search(query, offset, limit, filters, sort, sort_order, generate_filter_options, api_key)
        print("The response of DefaultApi->search:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->search: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**|  | 
 **offset** | **int**|  | 
 **limit** | **int**|  | 
 **filters** | **str**|  | [default to &#39;[]&#39;]
 **sort** | **str**|  | 
 **sort_order** | **str**|  | [default to &#39;asc&#39;]
 **generate_filter_options** | **bool**|  | [default to True]
 **api_key** | **str**|  | 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

No authorization required

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

GET v1/games/{id}/similar

### Example


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


# Enter a context with an instance of the API client
with gamebrain.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = gamebrain.DefaultApi(api_client)
    id = 56 # int | 
    limit = 56 # int | 
    api_key = 'api_key_example' # str | 

    try:
        # GET v1/games/{id}/similar
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
 **limit** | **int**|  | 
 **api_key** | **str**|  | 

### Return type

[**SimilarGamesResponse**](SimilarGamesResponse.md)

### Authorization

No authorization required

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

GET v1/games/suggestions

### Example


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


# Enter a context with an instance of the API client
with gamebrain.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = gamebrain.DefaultApi(api_client)
    query = 'query_example' # str | 
    limit = 56 # int | 
    api_key = 'api_key_example' # str | 

    try:
        # GET v1/games/suggestions
        api_response = api_instance.suggest(query, limit, api_key)
        print("The response of DefaultApi->suggest:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->suggest: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**|  | 
 **limit** | **int**|  | 
 **api_key** | **str**|  | 

### Return type

[**SearchSuggestionResponse**](SearchSuggestionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

