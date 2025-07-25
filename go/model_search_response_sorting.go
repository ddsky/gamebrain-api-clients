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

// checks if the SearchResponseSorting type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchResponseSorting{}

// SearchResponseSorting struct for SearchResponseSorting
type SearchResponseSorting struct {
	Key NullableString `json:"key,omitempty"`
	Direction NullableString `json:"direction,omitempty"`
}

// NewSearchResponseSorting instantiates a new SearchResponseSorting object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchResponseSorting() *SearchResponseSorting {
	this := SearchResponseSorting{}
	return &this
}

// NewSearchResponseSortingWithDefaults instantiates a new SearchResponseSorting object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchResponseSortingWithDefaults() *SearchResponseSorting {
	this := SearchResponseSorting{}
	return &this
}

// GetKey returns the Key field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchResponseSorting) GetKey() string {
	if o == nil || IsNil(o.Key.Get()) {
		var ret string
		return ret
	}
	return *o.Key.Get()
}

// GetKeyOk returns a tuple with the Key field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchResponseSorting) GetKeyOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Key.Get(), o.Key.IsSet()
}

// HasKey returns a boolean if a field has been set.
func (o *SearchResponseSorting) HasKey() bool {
	if o != nil && o.Key.IsSet() {
		return true
	}

	return false
}

// SetKey gets a reference to the given NullableString and assigns it to the Key field.
func (o *SearchResponseSorting) SetKey(v string) {
	o.Key.Set(&v)
}
// SetKeyNil sets the value for Key to be an explicit nil
func (o *SearchResponseSorting) SetKeyNil() {
	o.Key.Set(nil)
}

// UnsetKey ensures that no value is present for Key, not even an explicit nil
func (o *SearchResponseSorting) UnsetKey() {
	o.Key.Unset()
}

// GetDirection returns the Direction field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchResponseSorting) GetDirection() string {
	if o == nil || IsNil(o.Direction.Get()) {
		var ret string
		return ret
	}
	return *o.Direction.Get()
}

// GetDirectionOk returns a tuple with the Direction field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchResponseSorting) GetDirectionOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Direction.Get(), o.Direction.IsSet()
}

// HasDirection returns a boolean if a field has been set.
func (o *SearchResponseSorting) HasDirection() bool {
	if o != nil && o.Direction.IsSet() {
		return true
	}

	return false
}

// SetDirection gets a reference to the given NullableString and assigns it to the Direction field.
func (o *SearchResponseSorting) SetDirection(v string) {
	o.Direction.Set(&v)
}
// SetDirectionNil sets the value for Direction to be an explicit nil
func (o *SearchResponseSorting) SetDirectionNil() {
	o.Direction.Set(nil)
}

// UnsetDirection ensures that no value is present for Direction, not even an explicit nil
func (o *SearchResponseSorting) UnsetDirection() {
	o.Direction.Unset()
}

func (o SearchResponseSorting) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchResponseSorting) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Key.IsSet() {
		toSerialize["key"] = o.Key.Get()
	}
	if o.Direction.IsSet() {
		toSerialize["direction"] = o.Direction.Get()
	}
	return toSerialize, nil
}

type NullableSearchResponseSorting struct {
	value *SearchResponseSorting
	isSet bool
}

func (v NullableSearchResponseSorting) Get() *SearchResponseSorting {
	return v.value
}

func (v *NullableSearchResponseSorting) Set(val *SearchResponseSorting) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchResponseSorting) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchResponseSorting) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchResponseSorting(val *SearchResponseSorting) *NullableSearchResponseSorting {
	return &NullableSearchResponseSorting{value: val, isSet: true}
}

func (v NullableSearchResponseSorting) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchResponseSorting) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


