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
import com.spoonacular.client.model.GetWineRecommendation200ResponseRecommendedWinesInner;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Set;

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
public class GetWineRecommendation200Response {
  public static final String SERIALIZED_NAME_RECOMMENDED_WINES = "recommendedWines";
  @SerializedName(SERIALIZED_NAME_RECOMMENDED_WINES)
  private Set<GetWineRecommendation200ResponseRecommendedWinesInner> recommendedWines = new LinkedHashSet<>();

  public static final String SERIALIZED_NAME_TOTAL_FOUND = "totalFound";
  @SerializedName(SERIALIZED_NAME_TOTAL_FOUND)
  private Integer totalFound;

  public GetWineRecommendation200Response() {
  }

  public GetWineRecommendation200Response recommendedWines(Set<GetWineRecommendation200ResponseRecommendedWinesInner> recommendedWines) {
    this.recommendedWines = recommendedWines;
    return this;
  }

  public GetWineRecommendation200Response addRecommendedWinesItem(GetWineRecommendation200ResponseRecommendedWinesInner recommendedWinesItem) {
    if (this.recommendedWines == null) {
      this.recommendedWines = new LinkedHashSet<>();
    }
    this.recommendedWines.add(recommendedWinesItem);
    return this;
  }

  /**
   * Get recommendedWines
   * @return recommendedWines
   */
  @javax.annotation.Nonnull
  public Set<GetWineRecommendation200ResponseRecommendedWinesInner> getRecommendedWines() {
    return recommendedWines;
  }

  public void setRecommendedWines(Set<GetWineRecommendation200ResponseRecommendedWinesInner> recommendedWines) {
    this.recommendedWines = recommendedWines;
  }


  public GetWineRecommendation200Response totalFound(Integer totalFound) {
    this.totalFound = totalFound;
    return this;
  }

  /**
   * Get totalFound
   * @return totalFound
   */
  @javax.annotation.Nonnull
  public Integer getTotalFound() {
    return totalFound;
  }

  public void setTotalFound(Integer totalFound) {
    this.totalFound = totalFound;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetWineRecommendation200Response getWineRecommendation200Response = (GetWineRecommendation200Response) o;
    return Objects.equals(this.recommendedWines, getWineRecommendation200Response.recommendedWines) &&
        Objects.equals(this.totalFound, getWineRecommendation200Response.totalFound);
  }

  @Override
  public int hashCode() {
    return Objects.hash(recommendedWines, totalFound);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetWineRecommendation200Response {\n");
    sb.append("    recommendedWines: ").append(toIndentedString(recommendedWines)).append("\n");
    sb.append("    totalFound: ").append(toIndentedString(totalFound)).append("\n");
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
    openapiFields.add("recommendedWines");
    openapiFields.add("totalFound");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("recommendedWines");
    openapiRequiredFields.add("totalFound");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to GetWineRecommendation200Response
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!GetWineRecommendation200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in GetWineRecommendation200Response is not found in the empty JSON string", GetWineRecommendation200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!GetWineRecommendation200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `GetWineRecommendation200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : GetWineRecommendation200Response.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // ensure the json data is an array
      if (!jsonObj.get("recommendedWines").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `recommendedWines` to be an array in the JSON string but got `%s`", jsonObj.get("recommendedWines").toString()));
      }

      JsonArray jsonArrayrecommendedWines = jsonObj.getAsJsonArray("recommendedWines");
      // validate the required field `recommendedWines` (array)
      for (int i = 0; i < jsonArrayrecommendedWines.size(); i++) {
        GetWineRecommendation200ResponseRecommendedWinesInner.validateJsonElement(jsonArrayrecommendedWines.get(i));
      };
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!GetWineRecommendation200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'GetWineRecommendation200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<GetWineRecommendation200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(GetWineRecommendation200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<GetWineRecommendation200Response>() {
           @Override
           public void write(JsonWriter out, GetWineRecommendation200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public GetWineRecommendation200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of GetWineRecommendation200Response given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of GetWineRecommendation200Response
   * @throws IOException if the JSON string is invalid with respect to GetWineRecommendation200Response
   */
  public static GetWineRecommendation200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, GetWineRecommendation200Response.class);
  }

  /**
   * Convert an instance of GetWineRecommendation200Response to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

