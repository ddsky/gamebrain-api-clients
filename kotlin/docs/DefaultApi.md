# DefaultApi

All URIs are relative to *https://api.gamebrain.co/v1*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**detail**](DefaultApi.md#detail) | **GET** /games/{id} | GET v1/games/{id} |
| [**search**](DefaultApi.md#search) | **GET** /games | GET v1/games |
| [**similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | GET v1/games/{id}/similar |
| [**suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | GET v1/games/suggestions |


<a id="detail"></a>
# **detail**
> GameResponse detail(id, apiKey)

GET v1/games/{id}

### Example
```kotlin
// Import classes:
//import gamebrain.infrastructure.*
//import co.gamebrain.client.model.*

val apiInstance = DefaultApi()
val id : kotlin.Int = 56 // kotlin.Int | 
val apiKey : kotlin.String = apiKey_example // kotlin.String | 
try {
    val result : GameResponse = apiInstance.detail(id, apiKey)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#detail")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#detail")
    e.printStackTrace()
}
```

### Parameters
| **id** | **kotlin.Int**|  | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **apiKey** | **kotlin.String**|  | |

### Return type

[**GameResponse**](GameResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="search"></a>
# **search**
> SearchResponse search(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey)

GET v1/games

### Example
```kotlin
// Import classes:
//import gamebrain.infrastructure.*
//import co.gamebrain.client.model.*

val apiInstance = DefaultApi()
val query : kotlin.String = query_example // kotlin.String | 
val offset : kotlin.Int = 56 // kotlin.Int | 
val limit : kotlin.Int = 56 // kotlin.Int | 
val filters : kotlin.String = filters_example // kotlin.String | 
val sort : kotlin.String = sort_example // kotlin.String | 
val sortOrder : kotlin.String = sortOrder_example // kotlin.String | 
val generateFilterOptions : kotlin.Boolean = true // kotlin.Boolean | 
val apiKey : kotlin.String = apiKey_example // kotlin.String | 
try {
    val result : SearchResponse = apiInstance.search(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#search")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#search")
    e.printStackTrace()
}
```

### Parameters
| **query** | **kotlin.String**|  | |
| **offset** | **kotlin.Int**|  | |
| **limit** | **kotlin.Int**|  | |
| **filters** | **kotlin.String**|  | [default to &quot;[]&quot;] |
| **sort** | **kotlin.String**|  | |
| **sortOrder** | **kotlin.String**|  | [default to &quot;asc&quot;] |
| **generateFilterOptions** | **kotlin.Boolean**|  | [default to true] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **apiKey** | **kotlin.String**|  | |

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="similar"></a>
# **similar**
> SimilarGamesResponse similar(id, limit, apiKey)

GET v1/games/{id}/similar

### Example
```kotlin
// Import classes:
//import gamebrain.infrastructure.*
//import co.gamebrain.client.model.*

val apiInstance = DefaultApi()
val id : kotlin.Int = 56 // kotlin.Int | 
val limit : kotlin.Int = 56 // kotlin.Int | 
val apiKey : kotlin.String = apiKey_example // kotlin.String | 
try {
    val result : SimilarGamesResponse = apiInstance.similar(id, limit, apiKey)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#similar")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#similar")
    e.printStackTrace()
}
```

### Parameters
| **id** | **kotlin.Int**|  | |
| **limit** | **kotlin.Int**|  | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **apiKey** | **kotlin.String**|  | |

### Return type

[**SimilarGamesResponse**](SimilarGamesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="suggest"></a>
# **suggest**
> SearchSuggestionResponse suggest(query, limit, apiKey)

GET v1/games/suggestions

### Example
```kotlin
// Import classes:
//import gamebrain.infrastructure.*
//import co.gamebrain.client.model.*

val apiInstance = DefaultApi()
val query : kotlin.String = query_example // kotlin.String | 
val limit : kotlin.Int = 56 // kotlin.Int | 
val apiKey : kotlin.String = apiKey_example // kotlin.String | 
try {
    val result : SearchSuggestionResponse = apiInstance.suggest(query, limit, apiKey)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#suggest")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#suggest")
    e.printStackTrace()
}
```

### Parameters
| **query** | **kotlin.String**|  | |
| **limit** | **kotlin.Int**|  | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **apiKey** | **kotlin.String**|  | |

### Return type

[**SearchSuggestionResponse**](SearchSuggestionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

