# GameNewsItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** |  | 
**url** | **str** |  | 
**source** | **str** |  | 
**image** | **str** |  | [optional] 
**published** | **date** |  | 

## Example

```python
from gamebrain.models.game_news_item import GameNewsItem

# TODO update the JSON string below
json = "{}"
# create an instance of GameNewsItem from a JSON string
game_news_item_instance = GameNewsItem.from_json(json)
# print the JSON string representation of the object
print(GameNewsItem.to_json())

# convert the object into a dict
game_news_item_dict = game_news_item_instance.to_dict()
# create an instance of GameNewsItem from a dict
game_news_item_from_dict = GameNewsItem.from_dict(game_news_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


