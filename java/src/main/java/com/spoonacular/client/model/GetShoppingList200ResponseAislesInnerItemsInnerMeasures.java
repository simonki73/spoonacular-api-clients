/*
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.spoonacular.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.spoonacular.client.model.ParseIngredients200ResponseInnerNutritionWeightPerServing;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import com.spoonacular.client.JSON;

/**
 * GetShoppingList200ResponseAislesInnerItemsInnerMeasures
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-09-09T18:25:28.115+02:00[Europe/Berlin]")
public class GetShoppingList200ResponseAislesInnerItemsInnerMeasures {
  public static final String SERIALIZED_NAME_ORIGINAL = "original";
  @SerializedName(SERIALIZED_NAME_ORIGINAL)
  private ParseIngredients200ResponseInnerNutritionWeightPerServing original;

  public static final String SERIALIZED_NAME_METRIC = "metric";
  @SerializedName(SERIALIZED_NAME_METRIC)
  private ParseIngredients200ResponseInnerNutritionWeightPerServing metric;

  public static final String SERIALIZED_NAME_US = "us";
  @SerializedName(SERIALIZED_NAME_US)
  private ParseIngredients200ResponseInnerNutritionWeightPerServing us;

  public GetShoppingList200ResponseAislesInnerItemsInnerMeasures() { 
  }

  public GetShoppingList200ResponseAislesInnerItemsInnerMeasures original(ParseIngredients200ResponseInnerNutritionWeightPerServing original) {
    
    this.original = original;
    return this;
  }

   /**
   * Get original
   * @return original
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public ParseIngredients200ResponseInnerNutritionWeightPerServing getOriginal() {
    return original;
  }


  public void setOriginal(ParseIngredients200ResponseInnerNutritionWeightPerServing original) {
    this.original = original;
  }


  public GetShoppingList200ResponseAislesInnerItemsInnerMeasures metric(ParseIngredients200ResponseInnerNutritionWeightPerServing metric) {
    
    this.metric = metric;
    return this;
  }

   /**
   * Get metric
   * @return metric
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public ParseIngredients200ResponseInnerNutritionWeightPerServing getMetric() {
    return metric;
  }


  public void setMetric(ParseIngredients200ResponseInnerNutritionWeightPerServing metric) {
    this.metric = metric;
  }


  public GetShoppingList200ResponseAislesInnerItemsInnerMeasures us(ParseIngredients200ResponseInnerNutritionWeightPerServing us) {
    
    this.us = us;
    return this;
  }

   /**
   * Get us
   * @return us
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public ParseIngredients200ResponseInnerNutritionWeightPerServing getUs() {
    return us;
  }


  public void setUs(ParseIngredients200ResponseInnerNutritionWeightPerServing us) {
    this.us = us;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetShoppingList200ResponseAislesInnerItemsInnerMeasures getShoppingList200ResponseAislesInnerItemsInnerMeasures = (GetShoppingList200ResponseAislesInnerItemsInnerMeasures) o;
    return Objects.equals(this.original, getShoppingList200ResponseAislesInnerItemsInnerMeasures.original) &&
        Objects.equals(this.metric, getShoppingList200ResponseAislesInnerItemsInnerMeasures.metric) &&
        Objects.equals(this.us, getShoppingList200ResponseAislesInnerItemsInnerMeasures.us);
  }

  @Override
  public int hashCode() {
    return Objects.hash(original, metric, us);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetShoppingList200ResponseAislesInnerItemsInnerMeasures {\n");
    sb.append("    original: ").append(toIndentedString(original)).append("\n");
    sb.append("    metric: ").append(toIndentedString(metric)).append("\n");
    sb.append("    us: ").append(toIndentedString(us)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("original");
    openapiFields.add("metric");
    openapiFields.add("us");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("original");
    openapiRequiredFields.add("metric");
    openapiRequiredFields.add("us");
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to GetShoppingList200ResponseAislesInnerItemsInnerMeasures
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (GetShoppingList200ResponseAislesInnerItemsInnerMeasures.openapiRequiredFields.isEmpty()) {
          return;
        } else { // has required fields
          throw new IllegalArgumentException(String.format("The required field(s) %s in GetShoppingList200ResponseAislesInnerItemsInnerMeasures is not found in the empty JSON string", GetShoppingList200ResponseAislesInnerItemsInnerMeasures.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!GetShoppingList200ResponseAislesInnerItemsInnerMeasures.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `GetShoppingList200ResponseAislesInnerItemsInnerMeasures` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : GetShoppingList200ResponseAislesInnerItemsInnerMeasures.openapiRequiredFields) {
        if (jsonObj.get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonObj.toString()));
        }
      }
      // validate the optional field `original`
      if (jsonObj.getAsJsonObject("original") != null) {
        ParseIngredients200ResponseInnerNutritionWeightPerServing.validateJsonObject(jsonObj.getAsJsonObject("original"));
      }
      // validate the optional field `metric`
      if (jsonObj.getAsJsonObject("metric") != null) {
        ParseIngredients200ResponseInnerNutritionWeightPerServing.validateJsonObject(jsonObj.getAsJsonObject("metric"));
      }
      // validate the optional field `us`
      if (jsonObj.getAsJsonObject("us") != null) {
        ParseIngredients200ResponseInnerNutritionWeightPerServing.validateJsonObject(jsonObj.getAsJsonObject("us"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!GetShoppingList200ResponseAislesInnerItemsInnerMeasures.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'GetShoppingList200ResponseAislesInnerItemsInnerMeasures' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<GetShoppingList200ResponseAislesInnerItemsInnerMeasures> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(GetShoppingList200ResponseAislesInnerItemsInnerMeasures.class));

       return (TypeAdapter<T>) new TypeAdapter<GetShoppingList200ResponseAislesInnerItemsInnerMeasures>() {
           @Override
           public void write(JsonWriter out, GetShoppingList200ResponseAislesInnerItemsInnerMeasures value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public GetShoppingList200ResponseAislesInnerItemsInnerMeasures read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of GetShoppingList200ResponseAislesInnerItemsInnerMeasures given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of GetShoppingList200ResponseAislesInnerItemsInnerMeasures
  * @throws IOException if the JSON string is invalid with respect to GetShoppingList200ResponseAislesInnerItemsInnerMeasures
  */
  public static GetShoppingList200ResponseAislesInnerItemsInnerMeasures fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, GetShoppingList200ResponseAislesInnerItemsInnerMeasures.class);
  }

 /**
  * Convert an instance of GetShoppingList200ResponseAislesInnerItemsInnerMeasures to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
