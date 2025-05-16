# SearchResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sorting** | [**SearchResponseSorting**](SearchResponseSorting.md) |  | [optional] 
**active_filter_options** | [**List[SearchResponseActiveFilterOptionsInner]**](SearchResponseActiveFilterOptionsInner.md) |  | [optional] 
**query** | **str** |  | [optional] 
**total_results** | **int** |  | [optional] 
**limit** | **int** |  | [optional] 
**offset** | **int** |  | [optional] 
**results** | [**List[SearchResponseResultsInner]**](SearchResponseResultsInner.md) |  | [optional] 
**filter_options** | [**List[SearchResponseFilterOptionsInner]**](SearchResponseFilterOptionsInner.md) |  | [optional] 
**sorting_options** | [**List[SearchResponseSortingOptionsInner]**](SearchResponseSortingOptionsInner.md) |  | [optional] 

## Example

```python
from gamebrain.models.search_response import SearchResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SearchResponse from a JSON string
search_response_instance = SearchResponse.from_json(json)
# print the JSON string representation of the object
print(SearchResponse.to_json())

# convert the object into a dict
search_response_dict = search_response_instance.to_dict()
# create an instance of SearchResponse from a dict
search_response_from_dict = SearchResponse.from_dict(search_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


