# SearchResponseActiveFilterOptionsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **str** |  | [optional] 
**connection** | **str** |  | [optional] 
**values** | [**List[SearchResponseActiveFilterOptionsInnerValuesInner]**](SearchResponseActiveFilterOptionsInnerValuesInner.md) |  | [optional] 

## Example

```python
from gamebrain.models.search_response_active_filter_options_inner import SearchResponseActiveFilterOptionsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchResponseActiveFilterOptionsInner from a JSON string
search_response_active_filter_options_inner_instance = SearchResponseActiveFilterOptionsInner.from_json(json)
# print the JSON string representation of the object
print(SearchResponseActiveFilterOptionsInner.to_json())

# convert the object into a dict
search_response_active_filter_options_inner_dict = search_response_active_filter_options_inner_instance.to_dict()
# create an instance of SearchResponseActiveFilterOptionsInner from a dict
search_response_active_filter_options_inner_from_dict = SearchResponseActiveFilterOptionsInner.from_dict(search_response_active_filter_options_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


