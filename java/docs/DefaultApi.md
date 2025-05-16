# DefaultApi

All URIs are relative to *https://api.gamebrain.co/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**detail**](DefaultApi.md#detail) | **GET** /games/{id} | GET v1/games/{id} |
| [**search**](DefaultApi.md#search) | **GET** /games | GET v1/games |
| [**similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | GET v1/games/{id}/similar |
| [**suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | GET v1/games/suggestions |


<a id="detail"></a>
# **detail**
> GameResponse detail(id, apiKey)

GET v1/games/{id}

### Example
```java
// Import classes:
import co.gamebrain.client.ApiClient;
import co.gamebrain.client.ApiException;
import co.gamebrain.client.Configuration;
import co.gamebrain.client.models.*;
import co.gamebrain.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.gamebrain.co/v1");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    Integer id = 56; // Integer | 
    String apiKey = "apiKey_example"; // String | 
    try {
      GameResponse result = apiInstance.detail(id, apiKey);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#detail");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**|  | |
| **apiKey** | **String**|  | |

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

<a id="search"></a>
# **search**
> SearchResponse search(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey)

GET v1/games

### Example
```java
// Import classes:
import co.gamebrain.client.ApiClient;
import co.gamebrain.client.ApiException;
import co.gamebrain.client.Configuration;
import co.gamebrain.client.models.*;
import co.gamebrain.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.gamebrain.co/v1");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    String query = "query_example"; // String | 
    Integer offset = 56; // Integer | 
    Integer limit = 56; // Integer | 
    String filters = "[]"; // String | 
    String sort = "sort_example"; // String | 
    String sortOrder = "asc"; // String | 
    Boolean generateFilterOptions = true; // Boolean | 
    String apiKey = "apiKey_example"; // String | 
    try {
      SearchResponse result = apiInstance.search(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#search");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **query** | **String**|  | |
| **offset** | **Integer**|  | |
| **limit** | **Integer**|  | |
| **filters** | **String**|  | [default to []] |
| **sort** | **String**|  | |
| **sortOrder** | **String**|  | [default to asc] |
| **generateFilterOptions** | **Boolean**|  | [default to true] |
| **apiKey** | **String**|  | |

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

<a id="similar"></a>
# **similar**
> SimilarGamesResponse similar(id, limit, apiKey)

GET v1/games/{id}/similar

### Example
```java
// Import classes:
import co.gamebrain.client.ApiClient;
import co.gamebrain.client.ApiException;
import co.gamebrain.client.Configuration;
import co.gamebrain.client.models.*;
import co.gamebrain.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.gamebrain.co/v1");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    Integer id = 56; // Integer | 
    Integer limit = 56; // Integer | 
    String apiKey = "apiKey_example"; // String | 
    try {
      SimilarGamesResponse result = apiInstance.similar(id, limit, apiKey);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#similar");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Integer**|  | |
| **limit** | **Integer**|  | |
| **apiKey** | **String**|  | |

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

<a id="suggest"></a>
# **suggest**
> SearchSuggestionResponse suggest(query, limit, apiKey)

GET v1/games/suggestions

### Example
```java
// Import classes:
import co.gamebrain.client.ApiClient;
import co.gamebrain.client.ApiException;
import co.gamebrain.client.Configuration;
import co.gamebrain.client.models.*;
import co.gamebrain.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.gamebrain.co/v1");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    String query = "query_example"; // String | 
    Integer limit = 56; // Integer | 
    String apiKey = "apiKey_example"; // String | 
    try {
      SearchSuggestionResponse result = apiInstance.suggest(query, limit, apiKey);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#suggest");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **query** | **String**|  | |
| **limit** | **Integer**|  | |
| **apiKey** | **String**|  | |

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

