# GameNewsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**news** | [**List[GameNewsItem]**](GameNewsItem.md) |  | 

## Example

```python
from gamebrain.models.game_news_response import GameNewsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GameNewsResponse from a JSON string
game_news_response_instance = GameNewsResponse.from_json(json)
# print the JSON string representation of the object
print(GameNewsResponse.to_json())

# convert the object into a dict
game_news_response_dict = game_news_response_instance.to_dict()
# create an instance of GameNewsResponse from a dict
game_news_response_from_dict = GameNewsResponse.from_dict(game_news_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


