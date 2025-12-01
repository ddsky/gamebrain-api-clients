# gamebrain.Api.DefaultApi

All URIs are relative to *https://api.gamebrain.co/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**Detail**](DefaultApi.md#detail) | **GET** /games/{id} | Get Game Details |
| [**News**](DefaultApi.md#news) | **GET** /games/{id}/news | Get Game News |
| [**Search**](DefaultApi.md#search) | **GET** /games | Search Games |
| [**Similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | Get Similar Games |
| [**Suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | Get Game Suggestions |

<a id="detail"></a>
# **Detail**
> GameResponse Detail (int id, string apiKey)

Get Game Details

Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.

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
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new DefaultApi(config);
            var id = 56;  // int | The unique identifier of the game.
            var apiKey = abc123;  // string | Your API key for authentication.

            try
            {
                // Get Game Details
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
    // Get Game Details
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
| **id** | **int** | The unique identifier of the game. |  |
| **apiKey** | **string** | Your API key for authentication. |  |

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
| **200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="news"></a>
# **News**
> GameNewsResponse News (int id, int offset, int limit, string apiKey)

Get Game News

Get news related to the given game.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using gamebrain.Api;
using gamebrain.Client;
using gamebrain.Model;

namespace Example
{
    public class NewsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.gamebrain.co/v1";
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new DefaultApi(config);
            var id = 56;  // int | 
            var offset = 0;  // int |  (default to 0)
            var limit = 10;  // int |  (default to 10)
            var apiKey = abc123;  // string | 

            try
            {
                // Get Game News
                GameNewsResponse result = apiInstance.News(id, offset, limit, apiKey);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DefaultApi.News: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the NewsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get Game News
    ApiResponse<GameNewsResponse> response = apiInstance.NewsWithHttpInfo(id, offset, limit, apiKey);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DefaultApi.NewsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** |  |  |
| **offset** | **int** |  | [default to 0] |
| **limit** | **int** |  | [default to 10] |
| **apiKey** | **string** |  |  |

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
| **200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="search"></a>
# **Search**
> SearchResponse Search (string query, int offset, int limit, string filters, string sort, string sortOrder, bool generateFilterOptions, string apiKey)

Search Games

Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination

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
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new DefaultApi(config);
            var query = rpg for PC;  // string | The search query, e.g., game name, platform, genre, or any combination.
            var offset = 0;  // int | The number of results to skip before starting to collect the result set. Between 0 and 1000. (default to 0)
            var limit = 10;  // int | The maximum number of results to return between 1 and 10. (default to 10)
            var filters = [{"key":"platform","values":[{"value":"pc"}],"connection":"OR"},{"key":"genre","values":[{"value":"action"}]}];  // string | JSON array of filter objects to apply to the search. (default to "[]")
            var sort = computed_rating;  // string | The field by which to sort the results, either computed_rating, price, or release_date
            var sortOrder = asc;  // string | The sort order: 'asc' for ascending or 'desc' for descending. (default to "asc")
            var generateFilterOptions = true;  // bool | Whether to generate filter options in the response. (default to true)
            var apiKey = abc123;  // string | Your API key for authentication.

            try
            {
                // Search Games
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
    // Search Games
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
| **query** | **string** | The search query, e.g., game name, platform, genre, or any combination. |  |
| **offset** | **int** | The number of results to skip before starting to collect the result set. Between 0 and 1000. | [default to 0] |
| **limit** | **int** | The maximum number of results to return between 1 and 10. | [default to 10] |
| **filters** | **string** | JSON array of filter objects to apply to the search. | [default to &quot;[]&quot;] |
| **sort** | **string** | The field by which to sort the results, either computed_rating, price, or release_date |  |
| **sortOrder** | **string** | The sort order: &#39;asc&#39; for ascending or &#39;desc&#39; for descending. | [default to &quot;asc&quot;] |
| **generateFilterOptions** | **bool** | Whether to generate filter options in the response. | [default to true] |
| **apiKey** | **string** | Your API key for authentication. |  |

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
| **200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="similar"></a>
# **Similar**
> SimilarGamesResponse Similar (int id, int limit, string apiKey)

Get Similar Games

Get games that are similar to the given one.

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
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new DefaultApi(config);
            var id = 56;  // int | 
            var limit = 10;  // int |  (default to 10)
            var apiKey = abc123;  // string | 

            try
            {
                // Get Similar Games
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
    // Get Similar Games
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
| **limit** | **int** |  | [default to 10] |
| **apiKey** | **string** |  |  |

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
| **200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="suggest"></a>
# **Suggest**
> SearchSuggestionResponse Suggest (string query, int limit, string apiKey)

Get Game Suggestions

Get game suggestions based on (partial) search queries. For example, the query 'gt' will return games like GTA.

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
            // Configure API key authorization: apiKey
            config.AddApiKey("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.AddApiKey("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("x-api-key", "Bearer");

            var apiInstance = new DefaultApi(config);
            var query = gt;  // string | The partial search query to get suggestions for.
            var limit = 10;  // int | The maximum number of suggestions to return. (default to 10)
            var apiKey = abc123;  // string | Your API key for authentication.

            try
            {
                // Get Game Suggestions
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
    // Get Game Suggestions
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
| **query** | **string** | The partial search query to get suggestions for. |  |
| **limit** | **int** | The maximum number of suggestions to return. | [default to 10] |
| **apiKey** | **string** | Your API key for authentication. |  |

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
| **200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

