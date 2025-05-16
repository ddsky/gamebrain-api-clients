# OpenapiClient::SearchSuggestionResponseResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **year** | **Float** |  | [optional] |
| **name** | **String** |  | [optional] |
| **genre** | **String** |  | [optional] |
| **image** | **String** |  | [optional] |
| **link** | **String** |  | [optional] |
| **rating** | [**SearchResponseResultsInnerRating**](SearchResponseResultsInnerRating.md) |  | [optional] |
| **adult_only** | **Boolean** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SearchSuggestionResponseResultsInner.new(
  id: null,
  year: null,
  name: null,
  genre: null,
  image: null,
  link: null,
  rating: null,
  adult_only: null
)
```

