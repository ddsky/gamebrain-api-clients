# GameResponseOffersInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**price** | [**GameResponseOffersInnerPrice**](GameResponseOffersInnerPrice.md) |  | [optional] 
**store_name** | **str** |  | [optional] 
**platform** | **str** |  | [optional] 
**title** | **str** |  | [optional] 
**url** | **str** |  | [optional] 

## Example

```python
from gamebrain.models.game_response_offers_inner import GameResponseOffersInner

# TODO update the JSON string below
json = "{}"
# create an instance of GameResponseOffersInner from a JSON string
game_response_offers_inner_instance = GameResponseOffersInner.from_json(json)
# print the JSON string representation of the object
print(GameResponseOffersInner.to_json())

# convert the object into a dict
game_response_offers_inner_dict = game_response_offers_inner_instance.to_dict()
# create an instance of GameResponseOffersInner from a dict
game_response_offers_inner_from_dict = GameResponseOffersInner.from_dict(game_response_offers_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


