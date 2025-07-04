/*
GameBrain API

GameBrain API

API version: 1.0.1
Contact: mail@gamebrain.co
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package gamebrain

import (
	"encoding/json"
)

// checks if the SearchResponseResultsInnerRating type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchResponseResultsInnerRating{}

// SearchResponseResultsInnerRating struct for SearchResponseResultsInnerRating
type SearchResponseResultsInnerRating struct {
	Mean *float32 `json:"mean,omitempty"`
	Count *float32 `json:"count,omitempty"`
}

// NewSearchResponseResultsInnerRating instantiates a new SearchResponseResultsInnerRating object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchResponseResultsInnerRating() *SearchResponseResultsInnerRating {
	this := SearchResponseResultsInnerRating{}
	return &this
}

// NewSearchResponseResultsInnerRatingWithDefaults instantiates a new SearchResponseResultsInnerRating object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchResponseResultsInnerRatingWithDefaults() *SearchResponseResultsInnerRating {
	this := SearchResponseResultsInnerRating{}
	return &this
}

// GetMean returns the Mean field value if set, zero value otherwise.
func (o *SearchResponseResultsInnerRating) GetMean() float32 {
	if o == nil || IsNil(o.Mean) {
		var ret float32
		return ret
	}
	return *o.Mean
}

// GetMeanOk returns a tuple with the Mean field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchResponseResultsInnerRating) GetMeanOk() (*float32, bool) {
	if o == nil || IsNil(o.Mean) {
		return nil, false
	}
	return o.Mean, true
}

// HasMean returns a boolean if a field has been set.
func (o *SearchResponseResultsInnerRating) HasMean() bool {
	if o != nil && !IsNil(o.Mean) {
		return true
	}

	return false
}

// SetMean gets a reference to the given float32 and assigns it to the Mean field.
func (o *SearchResponseResultsInnerRating) SetMean(v float32) {
	o.Mean = &v
}

// GetCount returns the Count field value if set, zero value otherwise.
func (o *SearchResponseResultsInnerRating) GetCount() float32 {
	if o == nil || IsNil(o.Count) {
		var ret float32
		return ret
	}
	return *o.Count
}

// GetCountOk returns a tuple with the Count field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchResponseResultsInnerRating) GetCountOk() (*float32, bool) {
	if o == nil || IsNil(o.Count) {
		return nil, false
	}
	return o.Count, true
}

// HasCount returns a boolean if a field has been set.
func (o *SearchResponseResultsInnerRating) HasCount() bool {
	if o != nil && !IsNil(o.Count) {
		return true
	}

	return false
}

// SetCount gets a reference to the given float32 and assigns it to the Count field.
func (o *SearchResponseResultsInnerRating) SetCount(v float32) {
	o.Count = &v
}

func (o SearchResponseResultsInnerRating) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchResponseResultsInnerRating) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Mean) {
		toSerialize["mean"] = o.Mean
	}
	if !IsNil(o.Count) {
		toSerialize["count"] = o.Count
	}
	return toSerialize, nil
}

type NullableSearchResponseResultsInnerRating struct {
	value *SearchResponseResultsInnerRating
	isSet bool
}

func (v NullableSearchResponseResultsInnerRating) Get() *SearchResponseResultsInnerRating {
	return v.value
}

func (v *NullableSearchResponseResultsInnerRating) Set(val *SearchResponseResultsInnerRating) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchResponseResultsInnerRating) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchResponseResultsInnerRating) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchResponseResultsInnerRating(val *SearchResponseResultsInnerRating) *NullableSearchResponseResultsInnerRating {
	return &NullableSearchResponseResultsInnerRating{value: val, isSet: true}
}

func (v NullableSearchResponseResultsInnerRating) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchResponseResultsInnerRating) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


