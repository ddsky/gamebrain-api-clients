# WWW::OpenAPIClient::DefaultApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::DefaultApi;
```

All URIs are relative to *https://api.gamebrain.co/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detail**](DefaultApi.md#detail) | **GET** /games/{id} | Get Game Details
[**news**](DefaultApi.md#news) | **GET** /games/{id}/news | Get Game News
[**search**](DefaultApi.md#search) | **GET** /games | Search Games
[**similar**](DefaultApi.md#similar) | **GET** /games/{id}/similar | Get Similar Games
[**suggest**](DefaultApi.md#suggest) | **GET** /games/suggestions | Get Game Suggestions


# **detail**
> GameResponse detail(id => $id, api_key => $api_key)

Get Game Details

Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 56; # int | The unique identifier of the game.
my $api_key = abc123; # string | Your API key for authentication.

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
 **id** | **int**| The unique identifier of the game. | 
 **api_key** | **string**| Your API key for authentication. | 

### Return type

[**GameResponse**](GameResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **news**
> GameNewsResponse news(id => $id, offset => $offset, limit => $limit, api_key => $api_key)

Get Game News

Get news related to the given game.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 56; # int | 
my $offset = 0; # int | 
my $limit = 10; # int | 
my $api_key = abc123; # string | 

eval {
    my $result = $api_instance->news(id => $id, offset => $offset, limit => $limit, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->news: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **offset** | **int**|  | [default to 0]
 **limit** | **int**|  | [default to 10]
 **api_key** | **string**|  | 

### Return type

[**GameNewsResponse**](GameNewsResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
> SearchResponse search(query => $query, offset => $offset, limit => $limit, filters => $filters, sort => $sort, sort_order => $sort_order, generate_filter_options => $generate_filter_options, api_key => $api_key)

Search Games

Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $query = rpg for PC; # string | The search query, e.g., game name, platform, genre, or any combination.
my $offset = 0; # int | The number of results to skip before starting to collect the result set. Between 0 and 1000.
my $limit = 10; # int | The maximum number of results to return between 1 and 10.
my $filters = [{"key":"platform","values":[{"value":"pc"}],"connection":"OR"},{"key":"genre","values":[{"value":"action"}]}]; # string | JSON array of filter objects to apply to the search.
my $sort = computed_rating; # string | The field by which to sort the results, either computed_rating, price, or release_date
my $sort_order = asc; # string | The sort order: 'asc' for ascending or 'desc' for descending.
my $generate_filter_options = true; # boolean | Whether to generate filter options in the response.
my $api_key = abc123; # string | Your API key for authentication.

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
 **query** | **string**| The search query, e.g., game name, platform, genre, or any combination. | 
 **offset** | **int**| The number of results to skip before starting to collect the result set. Between 0 and 1000. | [default to 0]
 **limit** | **int**| The maximum number of results to return between 1 and 10. | [default to 10]
 **filters** | **string**| JSON array of filter objects to apply to the search. | [default to &#39;[]&#39;]
 **sort** | **string**| The field by which to sort the results, either computed_rating, price, or release_date | 
 **sort_order** | **string**| The sort order: &#39;asc&#39; for ascending or &#39;desc&#39; for descending. | [default to &#39;asc&#39;]
 **generate_filter_options** | **boolean**| Whether to generate filter options in the response. | [default to true]
 **api_key** | **string**| Your API key for authentication. | 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **similar**
> SimilarGamesResponse similar(id => $id, limit => $limit, api_key => $api_key)

Get Similar Games

Get games that are similar to the given one.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 56; # int | 
my $limit = 10; # int | 
my $api_key = abc123; # string | 

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
 **limit** | **int**|  | [default to 10]
 **api_key** | **string**|  | 

### Return type

[**SimilarGamesResponse**](SimilarGamesResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **suggest**
> SearchSuggestionResponse suggest(query => $query, limit => $limit, api_key => $api_key)

Get Game Suggestions

Get game suggestions based on (partial) search queries. For example, the query 'gt' will return games like GTA.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DefaultApi;
my $api_instance = WWW::OpenAPIClient::DefaultApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $query = gt; # string | The partial search query to get suggestions for.
my $limit = 10; # int | The maximum number of suggestions to return.
my $api_key = abc123; # string | Your API key for authentication.

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
 **query** | **string**| The partial search query to get suggestions for. | 
 **limit** | **int**| The maximum number of suggestions to return. | [default to 10]
 **api_key** | **string**| Your API key for authentication. | 

### Return type

[**SearchSuggestionResponse**](SearchSuggestionResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

