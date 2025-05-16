# GameResponseRating


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mean** | **float** |  | [optional] 
**count** | **int** |  | [optional] 
**mean_players** | **float** |  | [optional] 
**count_players** | **int** |  | [optional] 
**mean_critics** | **float** |  | [optional] 
**count_critics** | **int** |  | [optional] 

## Example

```python
from gamebrain.models.game_response_rating import GameResponseRating

# TODO update the JSON string below
json = "{}"
# create an instance of GameResponseRating from a JSON string
game_response_rating_instance = GameResponseRating.from_json(json)
# print the JSON string representation of the object
print(GameResponseRating.to_json())

# convert the object into a dict
game_response_rating_dict = game_response_rating_instance.to_dict()
# create an instance of GameResponseRating from a dict
game_response_rating_from_dict = GameResponseRating.from_dict(game_response_rating_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


