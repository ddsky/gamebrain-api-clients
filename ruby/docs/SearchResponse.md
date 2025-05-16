# OpenapiClient::SearchResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sorting** | [**SearchResponseSorting**](SearchResponseSorting.md) |  | [optional] |
| **active_filter_options** | [**Array&lt;SearchResponseActiveFilterOptionsInner&gt;**](SearchResponseActiveFilterOptionsInner.md) |  | [optional] |
| **query** | **String** |  | [optional] |
| **total_results** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |
| **results** | [**Array&lt;SearchResponseResultsInner&gt;**](SearchResponseResultsInner.md) |  | [optional] |
| **filter_options** | [**Array&lt;SearchResponseFilterOptionsInner&gt;**](SearchResponseFilterOptionsInner.md) |  | [optional] |
| **sorting_options** | [**Array&lt;SearchResponseSortingOptionsInner&gt;**](SearchResponseSortingOptionsInner.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SearchResponse.new(
  sorting: null,
  active_filter_options: null,
  query: null,
  total_results: null,
  limit: null,
  offset: null,
  results: null,
  filter_options: null,
  sorting_options: null
)
```

