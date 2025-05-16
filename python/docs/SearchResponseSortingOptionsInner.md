# SearchResponseSortingOptionsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**sort** | **str** |  | [optional] 
**key** | **str** |  | [optional] 

## Example

```python
from gamebrain.models.search_response_sorting_options_inner import SearchResponseSortingOptionsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchResponseSortingOptionsInner from a JSON string
search_response_sorting_options_inner_instance = SearchResponseSortingOptionsInner.from_json(json)
# print the JSON string representation of the object
print(SearchResponseSortingOptionsInner.to_json())

# convert the object into a dict
search_response_sorting_options_inner_dict = search_response_sorting_options_inner_instance.to_dict()
# create an instance of SearchResponseSortingOptionsInner from a dict
search_response_sorting_options_inner_from_dict = SearchResponseSortingOptionsInner.from_dict(search_response_sorting_options_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


