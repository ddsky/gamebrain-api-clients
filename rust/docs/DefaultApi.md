# \DefaultApi

All URIs are relative to *https://api.gamebrain.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detail**](DefaultApi.md#detail) | **GET** /games/{id} | Get Game Details
[**search**](DefaultApi.md#search) | **GET** /games | Search Games
[**similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | Get Similar Games
[**suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | Get Game Suggestions



## detail

> models::GameResponse detail(id, api_key)
Get Game Details

Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The unique identifier of the game. | [required] |
**api_key** | **String** | Your API key for authentication. | [required] |

### Return type

[**models::GameResponse**](GameResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search

> models::SearchResponse search(query, offset, limit, filters, sort, sort_order, generate_filter_options, api_key)
Search Games

Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** | The search query, e.g., game name, platform, genre, or any combination. | [required] |
**offset** | **i32** | The number of results to skip before starting to collect the result set. | [required] |[default to 0]
**limit** | **i32** | The maximum number of results to return. | [required] |[default to 48]
**filters** | **String** | JSON array of filter objects to apply to the search. | [required] |[default to []]
**sort** | **String** | The field by which to sort the results. | [required] |
**sort_order** | **String** | The sort order: 'asc' for ascending or 'desc' for descending. | [required] |[default to asc]
**generate_filter_options** | **bool** | Whether to generate filter options in the response. | [required] |[default to true]
**api_key** | **String** | Your API key for authentication. | [required] |

### Return type

[**models::SearchResponse**](SearchResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## similar

> models::SimilarGamesResponse similar(id, limit, api_key)
Get Similar Games

Get games that are similar to the given one.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** |  | [required] |
**limit** | **i32** |  | [required] |[default to 10]
**api_key** | **String** |  | [required] |

### Return type

[**models::SimilarGamesResponse**](SimilarGamesResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## suggest

> models::SearchSuggestionResponse suggest(query, limit, api_key)
Get Game Suggestions

Get game suggestions based on (partial) search queries. For example, the query 'gt' will return games like GTA.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** | The partial search query to get suggestions for. | [required] |
**limit** | **i32** | The maximum number of suggestions to return. | [required] |[default to 10]
**api_key** | **String** | Your API key for authentication. | [required] |

### Return type

[**models::SearchSuggestionResponse**](SearchSuggestionResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

