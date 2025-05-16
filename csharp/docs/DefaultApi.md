# gamebrain.Api.DefaultApi

All URIs are relative to *https://api.gamebrain.co/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**Detail**](DefaultApi.md#detail) | **GET** /games/{id} | GET v1/games/{id} |
| [**Search**](DefaultApi.md#search) | **GET** /games | GET v1/games |
| [**Similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | GET v1/games/{id}/similar |
| [**Suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | GET v1/games/suggestions |

<a id="detail"></a>
# **Detail**
> GameResponse Detail (int id, string apiKey)

GET v1/games/{id}

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using gamebrain.Api;
using gamebrain.Client;
using gamebrain.Model;

namespace Example
{
    public class DetailExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.gamebrain.co/v1";
            var apiInstance = new DefaultApi(config);
            var id = 56;  // int | 
            var apiKey = "apiKey_example";  // string | 

            try
            {
                // GET v1/games/{id}
                GameResponse result = apiInstance.Detail(id, apiKey);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.Detail: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DetailWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GET v1/games/{id}
    ApiResponse<GameResponse> response = apiInstance.DetailWithHttpInfo(id, apiKey);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DefaultApi.DetailWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** |  |  |
| **apiKey** | **string** |  |  |

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
| **200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="search"></a>
# **Search**
> SearchResponse Search (string query, int offset, int limit, string filters, string sort, string sortOrder, bool generateFilterOptions, string apiKey)

GET v1/games

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using gamebrain.Api;
using gamebrain.Client;
using gamebrain.Model;

namespace Example
{
    public class SearchExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.gamebrain.co/v1";
            var apiInstance = new DefaultApi(config);
            var query = "query_example";  // string | 
            var offset = 56;  // int | 
            var limit = 56;  // int | 
            var filters = "\"[]\"";  // string |  (default to "[]")
            var sort = "sort_example";  // string | 
            var sortOrder = "\"asc\"";  // string |  (default to "asc")
            var generateFilterOptions = true;  // bool |  (default to true)
            var apiKey = "apiKey_example";  // string | 

            try
            {
                // GET v1/games
                SearchResponse result = apiInstance.Search(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.Search: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GET v1/games
    ApiResponse<SearchResponse> response = apiInstance.SearchWithHttpInfo(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DefaultApi.SearchWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **query** | **string** |  |  |
| **offset** | **int** |  |  |
| **limit** | **int** |  |  |
| **filters** | **string** |  | [default to &quot;[]&quot;] |
| **sort** | **string** |  |  |
| **sortOrder** | **string** |  | [default to &quot;asc&quot;] |
| **generateFilterOptions** | **bool** |  | [default to true] |
| **apiKey** | **string** |  |  |

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
| **200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="similar"></a>
# **Similar**
> SimilarGamesResponse Similar (int id, int limit, string apiKey)

GET v1/games/{id}/similar

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using gamebrain.Api;
using gamebrain.Client;
using gamebrain.Model;

namespace Example
{
    public class SimilarExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.gamebrain.co/v1";
            var apiInstance = new DefaultApi(config);
            var id = 56;  // int | 
            var limit = 56;  // int | 
            var apiKey = "apiKey_example";  // string | 

            try
            {
                // GET v1/games/{id}/similar
                SimilarGamesResponse result = apiInstance.Similar(id, limit, apiKey);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.Similar: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SimilarWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GET v1/games/{id}/similar
    ApiResponse<SimilarGamesResponse> response = apiInstance.SimilarWithHttpInfo(id, limit, apiKey);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DefaultApi.SimilarWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** |  |  |
| **limit** | **int** |  |  |
| **apiKey** | **string** |  |  |

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
| **200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="suggest"></a>
# **Suggest**
> SearchSuggestionResponse Suggest (string query, int limit, string apiKey)

GET v1/games/suggestions

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using gamebrain.Api;
using gamebrain.Client;
using gamebrain.Model;

namespace Example
{
    public class SuggestExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.gamebrain.co/v1";
            var apiInstance = new DefaultApi(config);
            var query = "query_example";  // string | 
            var limit = 56;  // int | 
            var apiKey = "apiKey_example";  // string | 

            try
            {
                // GET v1/games/suggestions
                SearchSuggestionResponse result = apiInstance.Suggest(query, limit, apiKey);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.Suggest: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SuggestWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GET v1/games/suggestions
    ApiResponse<SearchSuggestionResponse> response = apiInstance.SuggestWithHttpInfo(query, limit, apiKey);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DefaultApi.SuggestWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **query** | **string** |  |  |
| **limit** | **int** |  |  |
| **apiKey** | **string** |  |  |

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
| **200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

