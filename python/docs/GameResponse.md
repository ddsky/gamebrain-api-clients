# GameResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**image** | **str** |  | [optional] 
**gameplay** | **str** |  | [optional] 
**link** | **str** |  | [optional] 
**x_url** | **str** |  | [optional] 
**rating** | [**GameResponseRating**](GameResponseRating.md) |  | [optional] 
**description** | **str** |  | [optional] 
**short_description** | **str** |  | [optional] 
**release_date** | **date** |  | [optional] 
**developer** | **str** |  | [optional] 
**playtime** | [**GameResponsePlaytime**](GameResponsePlaytime.md) |  | [optional] 
**platforms** | [**List[GameResponsePlatformsInner]**](GameResponsePlatformsInner.md) |  | [optional] 
**tags** | **List[str]** |  | [optional] 
**genres** | [**List[GameResponsePlatformsInner]**](GameResponsePlatformsInner.md) |  | [optional] 
**genre** | **str** |  | [optional] 
**themes** | [**List[GameResponsePlatformsInner]**](GameResponsePlatformsInner.md) |  | [optional] 
**adult_only** | **bool** |  | [optional] 
**play_modes** | [**List[GameResponsePlatformsInner]**](GameResponsePlatformsInner.md) |  | [optional] 
**screenshots** | **List[str]** |  | [optional] 
**videos** | **List[str]** |  | [optional] 
**offers** | [**List[GameResponseOffersInner]**](GameResponseOffersInner.md) |  | [optional] 
**official_stores** | [**List[GameResponseOfficialStoresInner]**](GameResponseOfficialStoresInner.md) |  | [optional] 
**micro_trailer** | **str** |  | [optional] 

## Example

```python
from gamebrain.models.game_response import GameResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GameResponse from a JSON string
game_response_instance = GameResponse.from_json(json)
# print the JSON string representation of the object
print(GameResponse.to_json())

# convert the object into a dict
game_response_dict = game_response_instance.to_dict()
# create an instance of GameResponse from a dict
game_response_from_dict = GameResponse.from_dict(game_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


