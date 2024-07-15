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
import com.spoonacular.client.model.GetRecipePriceBreakdownByID200ResponseIngredientsInner;
import java.io.IOException;
import java.math.BigDecimal;
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
public class GetRecipePriceBreakdownByID200Response {
  public static final String SERIALIZED_NAME_INGREDIENTS = "ingredients";
  @SerializedName(SERIALIZED_NAME_INGREDIENTS)
  private Set<GetRecipePriceBreakdownByID200ResponseIngredientsInner> ingredients = new LinkedHashSet<>();

  public static final String SERIALIZED_NAME_TOTAL_COST = "totalCost";
  @SerializedName(SERIALIZED_NAME_TOTAL_COST)
  private BigDecimal totalCost;

  public static final String SERIALIZED_NAME_TOTAL_COST_PER_SERVING = "totalCostPerServing";
  @SerializedName(SERIALIZED_NAME_TOTAL_COST_PER_SERVING)
  private BigDecimal totalCostPerServing;

  public GetRecipePriceBreakdownByID200Response() {
  }

  public GetRecipePriceBreakdownByID200Response ingredients(Set<GetRecipePriceBreakdownByID200ResponseIngredientsInner> ingredients) {
    this.ingredients = ingredients;
    return this;
  }

  public GetRecipePriceBreakdownByID200Response addIngredientsItem(GetRecipePriceBreakdownByID200ResponseIngredientsInner ingredientsItem) {
    if (this.ingredients == null) {
      this.ingredients = new LinkedHashSet<>();
    }
    this.ingredients.add(ingredientsItem);
    return this;
  }

  /**
   * Get ingredients
   * @return ingredients
   */
  @javax.annotation.Nonnull
  public Set<GetRecipePriceBreakdownByID200ResponseIngredientsInner> getIngredients() {
    return ingredients;
  }

  public void setIngredients(Set<GetRecipePriceBreakdownByID200ResponseIngredientsInner> ingredients) {
    this.ingredients = ingredients;
  }


  public GetRecipePriceBreakdownByID200Response totalCost(BigDecimal totalCost) {
    this.totalCost = totalCost;
    return this;
  }

  /**
   * Get totalCost
   * @return totalCost
   */
  @javax.annotation.Nonnull
  public BigDecimal getTotalCost() {
    return totalCost;
  }

  public void setTotalCost(BigDecimal totalCost) {
    this.totalCost = totalCost;
  }


  public GetRecipePriceBreakdownByID200Response totalCostPerServing(BigDecimal totalCostPerServing) {
    this.totalCostPerServing = totalCostPerServing;
    return this;
  }

  /**
   * Get totalCostPerServing
   * @return totalCostPerServing
   */
  @javax.annotation.Nonnull
  public BigDecimal getTotalCostPerServing() {
    return totalCostPerServing;
  }

  public void setTotalCostPerServing(BigDecimal totalCostPerServing) {
    this.totalCostPerServing = totalCostPerServing;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetRecipePriceBreakdownByID200Response getRecipePriceBreakdownByID200Response = (GetRecipePriceBreakdownByID200Response) o;
    return Objects.equals(this.ingredients, getRecipePriceBreakdownByID200Response.ingredients) &&
        Objects.equals(this.totalCost, getRecipePriceBreakdownByID200Response.totalCost) &&
        Objects.equals(this.totalCostPerServing, getRecipePriceBreakdownByID200Response.totalCostPerServing);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ingredients, totalCost, totalCostPerServing);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetRecipePriceBreakdownByID200Response {\n");
    sb.append("    ingredients: ").append(toIndentedString(ingredients)).append("\n");
    sb.append("    totalCost: ").append(toIndentedString(totalCost)).append("\n");
    sb.append("    totalCostPerServing: ").append(toIndentedString(totalCostPerServing)).append("\n");
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
    openapiFields.add("ingredients");
    openapiFields.add("totalCost");
    openapiFields.add("totalCostPerServing");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("ingredients");
    openapiRequiredFields.add("totalCost");
    openapiRequiredFields.add("totalCostPerServing");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to GetRecipePriceBreakdownByID200Response
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!GetRecipePriceBreakdownByID200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in GetRecipePriceBreakdownByID200Response is not found in the empty JSON string", GetRecipePriceBreakdownByID200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!GetRecipePriceBreakdownByID200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `GetRecipePriceBreakdownByID200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : GetRecipePriceBreakdownByID200Response.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // ensure the json data is an array
      if (!jsonObj.get("ingredients").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `ingredients` to be an array in the JSON string but got `%s`", jsonObj.get("ingredients").toString()));
      }

      JsonArray jsonArrayingredients = jsonObj.getAsJsonArray("ingredients");
      // validate the required field `ingredients` (array)
      for (int i = 0; i < jsonArrayingredients.size(); i++) {
        GetRecipePriceBreakdownByID200ResponseIngredientsInner.validateJsonElement(jsonArrayingredients.get(i));
      };
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!GetRecipePriceBreakdownByID200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'GetRecipePriceBreakdownByID200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<GetRecipePriceBreakdownByID200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(GetRecipePriceBreakdownByID200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<GetRecipePriceBreakdownByID200Response>() {
           @Override
           public void write(JsonWriter out, GetRecipePriceBreakdownByID200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public GetRecipePriceBreakdownByID200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of GetRecipePriceBreakdownByID200Response given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of GetRecipePriceBreakdownByID200Response
   * @throws IOException if the JSON string is invalid with respect to GetRecipePriceBreakdownByID200Response
   */
  public static GetRecipePriceBreakdownByID200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, GetRecipePriceBreakdownByID200Response.class);
  }

  /**
   * Convert an instance of GetRecipePriceBreakdownByID200Response to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

