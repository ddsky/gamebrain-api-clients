# OpenapiClient::GameResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **image** | **String** |  | [optional] |
| **gameplay** | **String** |  | [optional] |
| **link** | **String** |  | [optional] |
| **x_url** | **String** |  | [optional] |
| **rating** | [**GameResponseRating**](GameResponseRating.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **short_description** | **String** |  | [optional] |
| **release_date** | **Date** |  | [optional] |
| **developer** | **String** |  | [optional] |
| **playtime** | [**GameResponsePlaytime**](GameResponsePlaytime.md) |  | [optional] |
| **platforms** | [**Array&lt;GameResponsePlatformsInner&gt;**](GameResponsePlatformsInner.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **genres** | [**Array&lt;GameResponsePlatformsInner&gt;**](GameResponsePlatformsInner.md) |  | [optional] |
| **genre** | **String** |  | [optional] |
| **themes** | [**Array&lt;GameResponsePlatformsInner&gt;**](GameResponsePlatformsInner.md) |  | [optional] |
| **adult_only** | **Boolean** |  | [optional] |
| **play_modes** | [**Array&lt;GameResponsePlatformsInner&gt;**](GameResponsePlatformsInner.md) |  | [optional] |
| **screenshots** | **Array&lt;String&gt;** |  | [optional] |
| **videos** | **Array&lt;String&gt;** |  | [optional] |
| **offers** | [**Array&lt;GameResponseOffersInner&gt;**](GameResponseOffersInner.md) |  | [optional] |
| **official_stores** | [**Array&lt;GameResponseOfficialStoresInner&gt;**](GameResponseOfficialStoresInner.md) |  | [optional] |
| **micro_trailer** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GameResponse.new(
  id: null,
  name: null,
  image: null,
  gameplay: null,
  link: null,
  x_url: null,
  rating: null,
  description: null,
  short_description: null,
  release_date: null,
  developer: null,
  playtime: null,
  platforms: null,
  tags: null,
  genres: null,
  genre: null,
  themes: null,
  adult_only: null,
  play_modes: null,
  screenshots: null,
  videos: null,
  offers: null,
  official_stores: null,
  micro_trailer: null
)
```

