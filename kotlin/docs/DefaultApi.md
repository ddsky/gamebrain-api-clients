# DefaultApi

All URIs are relative to *https://api.gamebrain.co/v1*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**detail**](DefaultApi.md#detail) | **GET** /games/{id} | Get Game Details |
| [**search**](DefaultApi.md#search) | **GET** /games | Search Games |
| [**similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | Get Similar Games |
| [**suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | Get Game Suggestions |


<a id="detail"></a>
# **detail**
> GameResponse detail(id, apiKey)

Get Game Details

Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.

### Example
```kotlin
// Import classes:
//import gamebrain.infrastructure.*
//import co.gamebrain.client.model.*

val apiInstance = DefaultApi()
val id : kotlin.Int = 56 // kotlin.Int | The unique identifier of the game.
val apiKey : kotlin.String = abc123 // kotlin.String | Your API key for authentication.
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
| **id** | **kotlin.Int**| The unique identifier of the game. | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **apiKey** | **kotlin.String**| Your API key for authentication. | |

### Return type

[**GameResponse**](GameResponse.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="search"></a>
# **search**
> SearchResponse search(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey)

Search Games

Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination

### Example
```kotlin
// Import classes:
//import gamebrain.infrastructure.*
//import co.gamebrain.client.model.*

val apiInstance = DefaultApi()
val query : kotlin.String = rpg for PC // kotlin.String | The search query, e.g., game name, platform, genre, or any combination.
val offset : kotlin.Int = 56 // kotlin.Int | The number of results to skip before starting to collect the result set.
val limit : kotlin.Int = 56 // kotlin.Int | The maximum number of results to return.
val filters : kotlin.String = filters_example // kotlin.String | JSON array of filter objects to apply to the search.
val sort : kotlin.String = computed_rating // kotlin.String | The field by which to sort the results.
val sortOrder : kotlin.String = asc // kotlin.String | The sort order: 'asc' for ascending or 'desc' for descending.
val generateFilterOptions : kotlin.Boolean = true // kotlin.Boolean | Whether to generate filter options in the response.
val apiKey : kotlin.String = abc123 // kotlin.String | Your API key for authentication.
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
| **query** | **kotlin.String**| The search query, e.g., game name, platform, genre, or any combination. | |
| **offset** | **kotlin.Int**| The number of results to skip before starting to collect the result set. | [default to 0] |
| **limit** | **kotlin.Int**| The maximum number of results to return. | [default to 48] |
| **filters** | **kotlin.String**| JSON array of filter objects to apply to the search. | [default to &quot;[]&quot;] |
| **sort** | **kotlin.String**| The field by which to sort the results. | |
| **sortOrder** | **kotlin.String**| The sort order: &#39;asc&#39; for ascending or &#39;desc&#39; for descending. | [default to &quot;asc&quot;] |
| **generateFilterOptions** | **kotlin.Boolean**| Whether to generate filter options in the response. | [default to true] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **apiKey** | **kotlin.String**| Your API key for authentication. | |

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="similar"></a>
# **similar**
> SimilarGamesResponse similar(id, limit, apiKey)

Get Similar Games

Get games that are similar to the given one.

### Example
```kotlin
// Import classes:
//import gamebrain.infrastructure.*
//import co.gamebrain.client.model.*

val apiInstance = DefaultApi()
val id : kotlin.Int = 56 // kotlin.Int | 
val limit : kotlin.Int = 56 // kotlin.Int | 
val apiKey : kotlin.String = abc123 // kotlin.String | 
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
| **limit** | **kotlin.Int**|  | [default to 10] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **apiKey** | **kotlin.String**|  | |

### Return type

[**SimilarGamesResponse**](SimilarGamesResponse.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="suggest"></a>
# **suggest**
> SearchSuggestionResponse suggest(query, limit, apiKey)

Get Game Suggestions

Get game suggestions based on (partial) search queries. For example, the query &#39;gt&#39; will return games like GTA.

### Example
```kotlin
// Import classes:
//import gamebrain.infrastructure.*
//import co.gamebrain.client.model.*

val apiInstance = DefaultApi()
val query : kotlin.String = gt // kotlin.String | The partial search query to get suggestions for.
val limit : kotlin.Int = 56 // kotlin.Int | The maximum number of suggestions to return.
val apiKey : kotlin.String = abc123 // kotlin.String | Your API key for authentication.
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
| **query** | **kotlin.String**| The partial search query to get suggestions for. | |
| **limit** | **kotlin.Int**| The maximum number of suggestions to return. | [default to 10] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **apiKey** | **kotlin.String**| Your API key for authentication. | |

### Return type

[**SearchSuggestionResponse**](SearchSuggestionResponse.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

