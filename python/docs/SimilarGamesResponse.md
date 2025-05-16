# SimilarGamesResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[SearchResponseResultsInner]**](SearchResponseResultsInner.md) |  | [optional] 

## Example

```python
from gamebrain.models.similar_games_response import SimilarGamesResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SimilarGamesResponse from a JSON string
similar_games_response_instance = SimilarGamesResponse.from_json(json)
# print the JSON string representation of the object
print(SimilarGamesResponse.to_json())

# convert the object into a dict
similar_games_response_dict = similar_games_response_instance.to_dict()
# create an instance of SimilarGamesResponse from a dict
similar_games_response_from_dict = SimilarGamesResponse.from_dict(similar_games_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


