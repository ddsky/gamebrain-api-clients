# OpenapiClient::SearchResponseResultsInner

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
| **screenshots** | **Array&lt;String&gt;** |  | [optional] |
| **micro_trailer** | **String** |  | [optional] |
| **gameplay** | **String** |  | [optional] |
| **short_description** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SearchResponseResultsInner.new(
  id: null,
  year: null,
  name: null,
  genre: null,
  image: null,
  link: null,
  rating: null,
  adult_only: null,
  screenshots: null,
  micro_trailer: null,
  gameplay: null,
  short_description: null
)
```

