# SearchSuggestionResponseResultsInner


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

## Example

```python
from gamebrain.models.search_suggestion_response_results_inner import SearchSuggestionResponseResultsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchSuggestionResponseResultsInner from a JSON string
search_suggestion_response_results_inner_instance = SearchSuggestionResponseResultsInner.from_json(json)
# print the JSON string representation of the object
print(SearchSuggestionResponseResultsInner.to_json())

# convert the object into a dict
search_suggestion_response_results_inner_dict = search_suggestion_response_results_inner_instance.to_dict()
# create an instance of SearchSuggestionResponseResultsInner from a dict
search_suggestion_response_results_inner_from_dict = SearchSuggestionResponseResultsInner.from_dict(search_suggestion_response_results_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


