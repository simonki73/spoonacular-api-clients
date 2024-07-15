/*
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
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
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

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
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.spoonacular.client.JSON;

/**
 * 
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class GetIngredientSubstitutes200Response {
  public static final String SERIALIZED_NAME_INGREDIENT = "ingredient";
  @SerializedName(SERIALIZED_NAME_INGREDIENT)
  private String ingredient;

  public static final String SERIALIZED_NAME_SUBSTITUTES = "substitutes";
  @SerializedName(SERIALIZED_NAME_SUBSTITUTES)
  private List<String> substitutes = new ArrayList<>();

  public static final String SERIALIZED_NAME_MESSAGE = "message";
  @SerializedName(SERIALIZED_NAME_MESSAGE)
  private String message;

  public GetIngredientSubstitutes200Response() {
  }

  public GetIngredientSubstitutes200Response ingredient(String ingredient) {
    this.ingredient = ingredient;
    return this;
  }

  /**
   * Get ingredient
   * @return ingredient
   */
  @javax.annotation.Nonnull
  public String getIngredient() {
    return ingredient;
  }

  public void setIngredient(String ingredient) {
    this.ingredient = ingredient;
  }


  public GetIngredientSubstitutes200Response substitutes(List<String> substitutes) {
    this.substitutes = substitutes;
    return this;
  }

  public GetIngredientSubstitutes200Response addSubstitutesItem(String substitutesItem) {
    if (this.substitutes == null) {
      this.substitutes = new ArrayList<>();
    }
    this.substitutes.add(substitutesItem);
    return this;
  }

  /**
   * Get substitutes
   * @return substitutes
   */
  @javax.annotation.Nonnull
  public List<String> getSubstitutes() {
    return substitutes;
  }

  public void setSubstitutes(List<String> substitutes) {
    this.substitutes = substitutes;
  }


  public GetIngredientSubstitutes200Response message(String message) {
    this.message = message;
    return this;
  }

  /**
   * Get message
   * @return message
   */
  @javax.annotation.Nonnull
  public String getMessage() {
    return message;
  }

  public void setMessage(String message) {
    this.message = message;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetIngredientSubstitutes200Response getIngredientSubstitutes200Response = (GetIngredientSubstitutes200Response) o;
    return Objects.equals(this.ingredient, getIngredientSubstitutes200Response.ingredient) &&
        Objects.equals(this.substitutes, getIngredientSubstitutes200Response.substitutes) &&
        Objects.equals(this.message, getIngredientSubstitutes200Response.message);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ingredient, substitutes, message);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetIngredientSubstitutes200Response {\n");
    sb.append("    ingredient: ").append(toIndentedString(ingredient)).append("\n");
    sb.append("    substitutes: ").append(toIndentedString(substitutes)).append("\n");
    sb.append("    message: ").append(toIndentedString(message)).append("\n");
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
    openapiFields.add("ingredient");
    openapiFields.add("substitutes");
    openapiFields.add("message");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("ingredient");
    openapiRequiredFields.add("substitutes");
    openapiRequiredFields.add("message");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to GetIngredientSubstitutes200Response
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!GetIngredientSubstitutes200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in GetIngredientSubstitutes200Response is not found in the empty JSON string", GetIngredientSubstitutes200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!GetIngredientSubstitutes200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `GetIngredientSubstitutes200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : GetIngredientSubstitutes200Response.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (!jsonObj.get("ingredient").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `ingredient` to be a primitive type in the JSON string but got `%s`", jsonObj.get("ingredient").toString()));
      }
      // ensure the required json array is present
      if (jsonObj.get("substitutes") == null) {
        throw new IllegalArgumentException("Expected the field `linkedContent` to be an array in the JSON string but got `null`");
      } else if (!jsonObj.get("substitutes").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `substitutes` to be an array in the JSON string but got `%s`", jsonObj.get("substitutes").toString()));
      }
      if (!jsonObj.get("message").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `message` to be a primitive type in the JSON string but got `%s`", jsonObj.get("message").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!GetIngredientSubstitutes200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'GetIngredientSubstitutes200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<GetIngredientSubstitutes200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(GetIngredientSubstitutes200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<GetIngredientSubstitutes200Response>() {
           @Override
           public void write(JsonWriter out, GetIngredientSubstitutes200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public GetIngredientSubstitutes200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of GetIngredientSubstitutes200Response given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of GetIngredientSubstitutes200Response
   * @throws IOException if the JSON string is invalid with respect to GetIngredientSubstitutes200Response
   */
  public static GetIngredientSubstitutes200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, GetIngredientSubstitutes200Response.class);
  }

  /**
   * Convert an instance of GetIngredientSubstitutes200Response to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

