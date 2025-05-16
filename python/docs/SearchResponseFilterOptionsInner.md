# SearchResponseFilterOptionsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**key** | **str** |  | [optional] 
**values** | [**List[SearchResponseFilterOptionsInnerValuesInner]**](SearchResponseFilterOptionsInnerValuesInner.md) |  | [optional] 

## Example

```python
from gamebrain.models.search_response_filter_options_inner import SearchResponseFilterOptionsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchResponseFilterOptionsInner from a JSON string
search_response_filter_options_inner_instance = SearchResponseFilterOptionsInner.from_json(json)
# print the JSON string representation of the object
print(SearchResponseFilterOptionsInner.to_json())

# convert the object into a dict
search_response_filter_options_inner_dict = search_response_filter_options_inner_instance.to_dict()
# create an instance of SearchResponseFilterOptionsInner from a dict
search_response_filter_options_inner_from_dict = SearchResponseFilterOptionsInner.from_dict(search_response_filter_options_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


