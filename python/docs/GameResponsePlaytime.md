# GameResponsePlaytime


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**percentiles** | **List[int]** |  | [optional] 
**min** | **int** |  | [optional] 
**median** | **int** |  | [optional] 
**max** | **int** |  | [optional] 
**mean** | **float** |  | [optional] 
**mentions** | **int** |  | [optional] 

## Example

```python
from gamebrain.models.game_response_playtime import GameResponsePlaytime

# TODO update the JSON string below
json = "{}"
# create an instance of GameResponsePlaytime from a JSON string
game_response_playtime_instance = GameResponsePlaytime.from_json(json)
# print the JSON string representation of the object
print(GameResponsePlaytime.to_json())

# convert the object into a dict
game_response_playtime_dict = game_response_playtime_instance.to_dict()
# create an instance of GameResponsePlaytime from a dict
game_response_playtime_from_dict = GameResponsePlaytime.from_dict(game_response_playtime_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


