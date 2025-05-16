# \DefaultApi

All URIs are relative to *https://api.gamebrain.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detail**](DefaultApi.md#detail) | **GET** /games/{id} | GET v1/games/{id}
[**search**](DefaultApi.md#search) | **GET** /games | GET v1/games
[**similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | GET v1/games/{id}/similar
[**suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | GET v1/games/suggestions



## detail

> models::GameResponse detail(id, api_key)
GET v1/games/{id}

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** |  | [required] |
**api_key** | **String** |  | [required] |

### Return type

[**models::GameResponse**](GameResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search

> models::SearchResponse search(query, offset, limit, filters, sort, sort_order, generate_filter_options, api_key)
GET v1/games

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** |  | [required] |
**offset** | **i32** |  | [required] |
**limit** | **i32** |  | [required] |
**filters** | **String** |  | [required] |[default to []]
**sort** | **String** |  | [required] |
**sort_order** | **String** |  | [required] |[default to asc]
**generate_filter_options** | **bool** |  | [required] |[default to true]
**api_key** | **String** |  | [required] |

### Return type

[**models::SearchResponse**](SearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## similar

> models::SimilarGamesResponse similar(id, limit, api_key)
GET v1/games/{id}/similar

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** |  | [required] |
**limit** | **i32** |  | [required] |
**api_key** | **String** |  | [required] |

### Return type

[**models::SimilarGamesResponse**](SimilarGamesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## suggest

> models::SearchSuggestionResponse suggest(query, limit, api_key)
GET v1/games/suggestions

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** |  | [required] |
**limit** | **i32** |  | [required] |
**api_key** | **String** |  | [required] |

### Return type

[**models::SearchSuggestionResponse**](SearchSuggestionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

