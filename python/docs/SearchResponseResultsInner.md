# SearchResponseResultsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**year** | **float** |  | [optional] 
**name** | **str** |  | [optional] 
**genre** | **str** |  | [optional] 
**image** | **str** |  | [optional] 
**link** | **str** |  | [optional] 
**rating** | [**SearchResponseResultsInnerRating**](SearchResponseResultsInnerRating.md) |  | [optional] 
**adult_only** | **bool** |  | [optional] 
**screenshots** | **List[str]** |  | [optional] 
**micro_trailer** | **str** |  | [optional] 
**gameplay** | **str** |  | [optional] 
**short_description** | **str** |  | [optional] 

## Example

```python
from gamebrain.models.search_response_results_inner import SearchResponseResultsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchResponseResultsInner from a JSON string
search_response_results_inner_instance = SearchResponseResultsInner.from_json(json)
# print the JSON string representation of the object
print(SearchResponseResultsInner.to_json())

# convert the object into a dict
search_response_results_inner_dict = search_response_results_inner_instance.to_dict()
# create an instance of SearchResponseResultsInner from a dict
search_response_results_inner_from_dict = SearchResponseResultsInner.from_dict(search_response_results_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


