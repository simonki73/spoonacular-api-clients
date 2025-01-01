/*
spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

API version: 2.0.1
Contact: mail@spoonacular.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package spoonacular

import (
	"encoding/json"
	"bytes"
	"fmt"
)

// checks if the IngredientInformationNutrition type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &IngredientInformationNutrition{}

// IngredientInformationNutrition struct for IngredientInformationNutrition
type IngredientInformationNutrition struct {
	Nutrients []SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner `json:"nutrients"`
	Properties []IngredientInformationNutritionPropertiesInner `json:"properties"`
	CaloricBreakdown SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown `json:"caloricBreakdown"`
	WeightPerServing GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal `json:"weightPerServing"`
}

type _IngredientInformationNutrition IngredientInformationNutrition

// NewIngredientInformationNutrition instantiates a new IngredientInformationNutrition object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewIngredientInformationNutrition(nutrients []SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner, properties []IngredientInformationNutritionPropertiesInner, caloricBreakdown SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown, weightPerServing GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal) *IngredientInformationNutrition {
	this := IngredientInformationNutrition{}
	this.Nutrients = nutrients
	this.Properties = properties
	this.CaloricBreakdown = caloricBreakdown
	this.WeightPerServing = weightPerServing
	return &this
}

// NewIngredientInformationNutritionWithDefaults instantiates a new IngredientInformationNutrition object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewIngredientInformationNutritionWithDefaults() *IngredientInformationNutrition {
	this := IngredientInformationNutrition{}
	return &this
}

// GetNutrients returns the Nutrients field value
func (o *IngredientInformationNutrition) GetNutrients() []SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner {
	if o == nil {
		var ret []SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner
		return ret
	}

	return o.Nutrients
}

// GetNutrientsOk returns a tuple with the Nutrients field value
// and a boolean to check if the value has been set.
func (o *IngredientInformationNutrition) GetNutrientsOk() ([]SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner, bool) {
	if o == nil {
		return nil, false
	}
	return o.Nutrients, true
}

// SetNutrients sets field value
func (o *IngredientInformationNutrition) SetNutrients(v []SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner) {
	o.Nutrients = v
}

// GetProperties returns the Properties field value
func (o *IngredientInformationNutrition) GetProperties() []IngredientInformationNutritionPropertiesInner {
	if o == nil {
		var ret []IngredientInformationNutritionPropertiesInner
		return ret
	}

	return o.Properties
}

// GetPropertiesOk returns a tuple with the Properties field value
// and a boolean to check if the value has been set.
func (o *IngredientInformationNutrition) GetPropertiesOk() ([]IngredientInformationNutritionPropertiesInner, bool) {
	if o == nil {
		return nil, false
	}
	return o.Properties, true
}

// SetProperties sets field value
func (o *IngredientInformationNutrition) SetProperties(v []IngredientInformationNutritionPropertiesInner) {
	o.Properties = v
}

// GetCaloricBreakdown returns the CaloricBreakdown field value
func (o *IngredientInformationNutrition) GetCaloricBreakdown() SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown {
	if o == nil {
		var ret SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown
		return ret
	}

	return o.CaloricBreakdown
}

// GetCaloricBreakdownOk returns a tuple with the CaloricBreakdown field value
// and a boolean to check if the value has been set.
func (o *IngredientInformationNutrition) GetCaloricBreakdownOk() (*SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown, bool) {
	if o == nil {
		return nil, false
	}
	return &o.CaloricBreakdown, true
}

// SetCaloricBreakdown sets field value
func (o *IngredientInformationNutrition) SetCaloricBreakdown(v SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown) {
	o.CaloricBreakdown = v
}

// GetWeightPerServing returns the WeightPerServing field value
func (o *IngredientInformationNutrition) GetWeightPerServing() GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal {
	if o == nil {
		var ret GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal
		return ret
	}

	return o.WeightPerServing
}

// GetWeightPerServingOk returns a tuple with the WeightPerServing field value
// and a boolean to check if the value has been set.
func (o *IngredientInformationNutrition) GetWeightPerServingOk() (*GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal, bool) {
	if o == nil {
		return nil, false
	}
	return &o.WeightPerServing, true
}

// SetWeightPerServing sets field value
func (o *IngredientInformationNutrition) SetWeightPerServing(v GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal) {
	o.WeightPerServing = v
}

func (o IngredientInformationNutrition) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o IngredientInformationNutrition) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["nutrients"] = o.Nutrients
	toSerialize["properties"] = o.Properties
	toSerialize["caloricBreakdown"] = o.CaloricBreakdown
	toSerialize["weightPerServing"] = o.WeightPerServing
	return toSerialize, nil
}

func (o *IngredientInformationNutrition) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"nutrients",
		"properties",
		"caloricBreakdown",
		"weightPerServing",
	}

	allProperties := make(map[string]interface{})

	err = json.Unmarshal(data, &allProperties)

	if err != nil {
		return err;
	}

	for _, requiredProperty := range(requiredProperties) {
		if _, exists := allProperties[requiredProperty]; !exists {
			return fmt.Errorf("no value given for required property %v", requiredProperty)
		}
	}

	varIngredientInformationNutrition := _IngredientInformationNutrition{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varIngredientInformationNutrition)

	if err != nil {
		return err
	}

	*o = IngredientInformationNutrition(varIngredientInformationNutrition)

	return err
}

type NullableIngredientInformationNutrition struct {
	value *IngredientInformationNutrition
	isSet bool
}

func (v NullableIngredientInformationNutrition) Get() *IngredientInformationNutrition {
	return v.value
}

func (v *NullableIngredientInformationNutrition) Set(val *IngredientInformationNutrition) {
	v.value = val
	v.isSet = true
}

func (v NullableIngredientInformationNutrition) IsSet() bool {
	return v.isSet
}

func (v *NullableIngredientInformationNutrition) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableIngredientInformationNutrition(val *IngredientInformationNutrition) *NullableIngredientInformationNutrition {
	return &NullableIngredientInformationNutrition{value: val, isSet: true}
}

func (v NullableIngredientInformationNutrition) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableIngredientInformationNutrition) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

