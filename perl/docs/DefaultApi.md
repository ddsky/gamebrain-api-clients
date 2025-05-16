# WWW::OpenAPIClient::DefaultApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::DefaultApi;
```

All URIs are relative to *https://api.gamebrain.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detail**](DefaultApi.md#detail) | **GET** /games/{id} | GET v1/games/{id}
[**search**](DefaultApi.md#search) | **GET** /games | GET v1/games
[**similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | GET v1/games/{id}/similar
[**suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | GET v1/games/suggestions


# **detail**
> GameResponse detail(id => $id, api_key => $api_key)

GET v1/games/{id}

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(
);

my $id = 56; # int | 
my $api_key = "api_key_example"; # string | 

eval {
    my $result = $api_instance->detail(id => $id, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->detail: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **api_key** | **string**|  | 

### Return type

[**GameResponse**](GameResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
> SearchResponse search(query => $query, offset => $offset, limit => $limit, filters => $filters, sort => $sort, sort_order => $sort_order, generate_filter_options => $generate_filter_options, api_key => $api_key)

GET v1/games

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(
);

my $query = "query_example"; # string | 
my $offset = 56; # int | 
my $limit = 56; # int | 
my $filters = '[]'; # string | 
my $sort = "sort_example"; # string | 
my $sort_order = 'asc'; # string | 
my $generate_filter_options = true; # boolean | 
my $api_key = "api_key_example"; # string | 

eval {
    my $result = $api_instance->search(query => $query, offset => $offset, limit => $limit, filters => $filters, sort => $sort, sort_order => $sort_order, generate_filter_options => $generate_filter_options, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**|  | 
 **offset** | **int**|  | 
 **limit** | **int**|  | 
 **filters** | **string**|  | [default to &#39;[]&#39;]
 **sort** | **string**|  | 
 **sort_order** | **string**|  | [default to &#39;asc&#39;]
 **generate_filter_options** | **boolean**|  | [default to true]
 **api_key** | **string**|  | 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **similar**
> SimilarGamesResponse similar(id => $id, limit => $limit, api_key => $api_key)

GET v1/games/{id}/similar

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(
);

my $id = 56; # int | 
my $limit = 56; # int | 
my $api_key = "api_key_example"; # string | 

eval {
    my $result = $api_instance->similar(id => $id, limit => $limit, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->similar: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **limit** | **int**|  | 
 **api_key** | **string**|  | 

### Return type

[**SimilarGamesResponse**](SimilarGamesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **suggest**
> SearchSuggestionResponse suggest(query => $query, limit => $limit, api_key => $api_key)

GET v1/games/suggestions

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(
);

my $query = "query_example"; # string | 
my $limit = 56; # int | 
my $api_key = "api_key_example"; # string | 

eval {
    my $result = $api_instance->suggest(query => $query, limit => $limit, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->suggest: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**|  | 
 **limit** | **int**|  | 
 **api_key** | **string**|  | 

### Return type

[**SearchSuggestionResponse**](SearchSuggestionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

