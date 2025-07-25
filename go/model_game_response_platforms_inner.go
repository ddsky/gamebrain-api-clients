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

// checks if the GameResponsePlatformsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &GameResponsePlatformsInner{}

// GameResponsePlatformsInner struct for GameResponsePlatformsInner
type GameResponsePlatformsInner struct {
	Value *string `json:"value,omitempty"`
	Name *string `json:"name,omitempty"`
}

// NewGameResponsePlatformsInner instantiates a new GameResponsePlatformsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGameResponsePlatformsInner() *GameResponsePlatformsInner {
	this := GameResponsePlatformsInner{}
	return &this
}

// NewGameResponsePlatformsInnerWithDefaults instantiates a new GameResponsePlatformsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGameResponsePlatformsInnerWithDefaults() *GameResponsePlatformsInner {
	this := GameResponsePlatformsInner{}
	return &this
}

// GetValue returns the Value field value if set, zero value otherwise.
func (o *GameResponsePlatformsInner) GetValue() string {
	if o == nil || IsNil(o.Value) {
		var ret string
		return ret
	}
	return *o.Value
}

// GetValueOk returns a tuple with the Value field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GameResponsePlatformsInner) GetValueOk() (*string, bool) {
	if o == nil || IsNil(o.Value) {
		return nil, false
	}
	return o.Value, true
}

// HasValue returns a boolean if a field has been set.
func (o *GameResponsePlatformsInner) HasValue() bool {
	if o != nil && !IsNil(o.Value) {
		return true
	}

	return false
}

// SetValue gets a reference to the given string and assigns it to the Value field.
func (o *GameResponsePlatformsInner) SetValue(v string) {
	o.Value = &v
}

// GetName returns the Name field value if set, zero value otherwise.
func (o *GameResponsePlatformsInner) GetName() string {
	if o == nil || IsNil(o.Name) {
		var ret string
		return ret
	}
	return *o.Name
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GameResponsePlatformsInner) GetNameOk() (*string, bool) {
	if o == nil || IsNil(o.Name) {
		return nil, false
	}
	return o.Name, true
}

// HasName returns a boolean if a field has been set.
func (o *GameResponsePlatformsInner) HasName() bool {
	if o != nil && !IsNil(o.Name) {
		return true
	}

	return false
}

// SetName gets a reference to the given string and assigns it to the Name field.
func (o *GameResponsePlatformsInner) SetName(v string) {
	o.Name = &v
}

func (o GameResponsePlatformsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o GameResponsePlatformsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Value) {
		toSerialize["value"] = o.Value
	}
	if !IsNil(o.Name) {
		toSerialize["name"] = o.Name
	}
	return toSerialize, nil
}

type NullableGameResponsePlatformsInner struct {
	value *GameResponsePlatformsInner
	isSet bool
}

func (v NullableGameResponsePlatformsInner) Get() *GameResponsePlatformsInner {
	return v.value
}

func (v *NullableGameResponsePlatformsInner) Set(val *GameResponsePlatformsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableGameResponsePlatformsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableGameResponsePlatformsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGameResponsePlatformsInner(val *GameResponsePlatformsInner) *NullableGameResponsePlatformsInner {
	return &NullableGameResponsePlatformsInner{value: val, isSet: true}
}

func (v NullableGameResponsePlatformsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGameResponsePlatformsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


