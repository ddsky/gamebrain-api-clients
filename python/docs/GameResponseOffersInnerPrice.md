# GameResponseOffersInnerPrice


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **str** |  | [optional] 
**discount_percent** | **float** |  | [optional] 
**value** | **float** |  | [optional] 
**initial** | **float** |  | [optional] 

## Example

```python
from gamebrain.models.game_response_offers_inner_price import GameResponseOffersInnerPrice

# TODO update the JSON string below
json = "{}"
# create an instance of GameResponseOffersInnerPrice from a JSON string
game_response_offers_inner_price_instance = GameResponseOffersInnerPrice.from_json(json)
# print the JSON string representation of the object
print(GameResponseOffersInnerPrice.to_json())

# convert the object into a dict
game_response_offers_inner_price_dict = game_response_offers_inner_price_instance.to_dict()
# create an instance of GameResponseOffersInnerPrice from a dict
game_response_offers_inner_price_from_dict = GameResponseOffersInnerPrice.from_dict(game_response_offers_inner_price_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


