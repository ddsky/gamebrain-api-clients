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

// checks if the SearchResponseFilterOptionsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchResponseFilterOptionsInner{}

// SearchResponseFilterOptionsInner struct for SearchResponseFilterOptionsInner
type SearchResponseFilterOptionsInner struct {
	Name *string `json:"name,omitempty"`
	Key *string `json:"key,omitempty"`
	Values []SearchResponseFilterOptionsInnerValuesInner `json:"values,omitempty"`
}

// NewSearchResponseFilterOptionsInner instantiates a new SearchResponseFilterOptionsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchResponseFilterOptionsInner() *SearchResponseFilterOptionsInner {
	this := SearchResponseFilterOptionsInner{}
	return &this
}

// NewSearchResponseFilterOptionsInnerWithDefaults instantiates a new SearchResponseFilterOptionsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchResponseFilterOptionsInnerWithDefaults() *SearchResponseFilterOptionsInner {
	this := SearchResponseFilterOptionsInner{}
	return &this
}

// GetName returns the Name field value if set, zero value otherwise.
func (o *SearchResponseFilterOptionsInner) GetName() string {
	if o == nil || IsNil(o.Name) {
		var ret string
		return ret
	}
	return *o.Name
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchResponseFilterOptionsInner) GetNameOk() (*string, bool) {
	if o == nil || IsNil(o.Name) {
		return nil, false
	}
	return o.Name, true
}

// HasName returns a boolean if a field has been set.
func (o *SearchResponseFilterOptionsInner) HasName() bool {
	if o != nil && !IsNil(o.Name) {
		return true
	}

	return false
}

// SetName gets a reference to the given string and assigns it to the Name field.
func (o *SearchResponseFilterOptionsInner) SetName(v string) {
	o.Name = &v
}

// GetKey returns the Key field value if set, zero value otherwise.
func (o *SearchResponseFilterOptionsInner) GetKey() string {
	if o == nil || IsNil(o.Key) {
		var ret string
		return ret
	}
	return *o.Key
}

// GetKeyOk returns a tuple with the Key field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchResponseFilterOptionsInner) GetKeyOk() (*string, bool) {
	if o == nil || IsNil(o.Key) {
		return nil, false
	}
	return o.Key, true
}

// HasKey returns a boolean if a field has been set.
func (o *SearchResponseFilterOptionsInner) HasKey() bool {
	if o != nil && !IsNil(o.Key) {
		return true
	}

	return false
}

// SetKey gets a reference to the given string and assigns it to the Key field.
func (o *SearchResponseFilterOptionsInner) SetKey(v string) {
	o.Key = &v
}

// GetValues returns the Values field value if set, zero value otherwise.
func (o *SearchResponseFilterOptionsInner) GetValues() []SearchResponseFilterOptionsInnerValuesInner {
	if o == nil || IsNil(o.Values) {
		var ret []SearchResponseFilterOptionsInnerValuesInner
		return ret
	}
	return o.Values
}

// GetValuesOk returns a tuple with the Values field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchResponseFilterOptionsInner) GetValuesOk() ([]SearchResponseFilterOptionsInnerValuesInner, bool) {
	if o == nil || IsNil(o.Values) {
		return nil, false
	}
	return o.Values, true
}

// HasValues returns a boolean if a field has been set.
func (o *SearchResponseFilterOptionsInner) HasValues() bool {
	if o != nil && !IsNil(o.Values) {
		return true
	}

	return false
}

// SetValues gets a reference to the given []SearchResponseFilterOptionsInnerValuesInner and assigns it to the Values field.
func (o *SearchResponseFilterOptionsInner) SetValues(v []SearchResponseFilterOptionsInnerValuesInner) {
	o.Values = v
}

func (o SearchResponseFilterOptionsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchResponseFilterOptionsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Name) {
		toSerialize["name"] = o.Name
	}
	if !IsNil(o.Key) {
		toSerialize["key"] = o.Key
	}
	if !IsNil(o.Values) {
		toSerialize["values"] = o.Values
	}
	return toSerialize, nil
}

type NullableSearchResponseFilterOptionsInner struct {
	value *SearchResponseFilterOptionsInner
	isSet bool
}

func (v NullableSearchResponseFilterOptionsInner) Get() *SearchResponseFilterOptionsInner {
	return v.value
}

func (v *NullableSearchResponseFilterOptionsInner) Set(val *SearchResponseFilterOptionsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchResponseFilterOptionsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchResponseFilterOptionsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchResponseFilterOptionsInner(val *SearchResponseFilterOptionsInner) *NullableSearchResponseFilterOptionsInner {
	return &NullableSearchResponseFilterOptionsInner{value: val, isSet: true}
}

func (v NullableSearchResponseFilterOptionsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchResponseFilterOptionsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


