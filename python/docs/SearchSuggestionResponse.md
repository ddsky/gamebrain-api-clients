# SearchSuggestionResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[SearchSuggestionResponseResultsInner]**](SearchSuggestionResponseResultsInner.md) |  | [optional] 

## Example

```python
from gamebrain.models.search_suggestion_response import SearchSuggestionResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SearchSuggestionResponse from a JSON string
search_suggestion_response_instance = SearchSuggestionResponse.from_json(json)
# print the JSON string representation of the object
print(SearchSuggestionResponse.to_json())

# convert the object into a dict
search_suggestion_response_dict = search_suggestion_response_instance.to_dict()
# create an instance of SearchSuggestionResponse from a dict
search_suggestion_response_from_dict = SearchSuggestionResponse.from_dict(search_suggestion_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


