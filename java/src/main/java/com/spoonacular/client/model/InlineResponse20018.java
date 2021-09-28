/*
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.0
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
import com.spoonacular.client.model.InlineResponse20018Dishes;
import com.spoonacular.client.model.InlineResponse20018Ingredients;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * InlineResponse20018
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2021-09-28T20:40:32.759+02:00[Europe/Berlin]")
public class InlineResponse20018 {
  public static final String SERIALIZED_NAME_DISHES = "dishes";
  @SerializedName(SERIALIZED_NAME_DISHES)
  private List<InlineResponse20018Dishes> dishes = new ArrayList<>();

  public static final String SERIALIZED_NAME_INGREDIENTS = "ingredients";
  @SerializedName(SERIALIZED_NAME_INGREDIENTS)
  private List<InlineResponse20018Ingredients> ingredients = new ArrayList<>();

  public static final String SERIALIZED_NAME_CUISINES = "cuisines";
  @SerializedName(SERIALIZED_NAME_CUISINES)
  private List<String> cuisines = new ArrayList<>();

  public static final String SERIALIZED_NAME_MODIFIERS = "modifiers";
  @SerializedName(SERIALIZED_NAME_MODIFIERS)
  private List<String> modifiers = new ArrayList<>();

  public InlineResponse20018 dishes(List<InlineResponse20018Dishes> dishes) {
    this.dishes = dishes;
    return this;
  }

  public InlineResponse20018 addDishesItem(InlineResponse20018Dishes dishesItem) {
    this.dishes.add(dishesItem);
    return this;
  }

   /**
   * Get dishes
   * @return dishes
  **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20018Dishes> getDishes() {
    return dishes;
  }

  public void setDishes(List<InlineResponse20018Dishes> dishes) {
    this.dishes = dishes;
  }

  public InlineResponse20018 ingredients(List<InlineResponse20018Ingredients> ingredients) {
    this.ingredients = ingredients;
    return this;
  }

  public InlineResponse20018 addIngredientsItem(InlineResponse20018Ingredients ingredientsItem) {
    this.ingredients.add(ingredientsItem);
    return this;
  }

   /**
   * Get ingredients
   * @return ingredients
  **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20018Ingredients> getIngredients() {
    return ingredients;
  }

  public void setIngredients(List<InlineResponse20018Ingredients> ingredients) {
    this.ingredients = ingredients;
  }

  public InlineResponse20018 cuisines(List<String> cuisines) {
    this.cuisines = cuisines;
    return this;
  }

  public InlineResponse20018 addCuisinesItem(String cuisinesItem) {
    this.cuisines.add(cuisinesItem);
    return this;
  }

   /**
   * Get cuisines
   * @return cuisines
  **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getCuisines() {
    return cuisines;
  }

  public void setCuisines(List<String> cuisines) {
    this.cuisines = cuisines;
  }

  public InlineResponse20018 modifiers(List<String> modifiers) {
    this.modifiers = modifiers;
    return this;
  }

  public InlineResponse20018 addModifiersItem(String modifiersItem) {
    this.modifiers.add(modifiersItem);
    return this;
  }

   /**
   * Get modifiers
   * @return modifiers
  **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getModifiers() {
    return modifiers;
  }

  public void setModifiers(List<String> modifiers) {
    this.modifiers = modifiers;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20018 inlineResponse20018 = (InlineResponse20018) o;
    return Objects.equals(this.dishes, inlineResponse20018.dishes) &&
        Objects.equals(this.ingredients, inlineResponse20018.ingredients) &&
        Objects.equals(this.cuisines, inlineResponse20018.cuisines) &&
        Objects.equals(this.modifiers, inlineResponse20018.modifiers);
  }

  @Override
  public int hashCode() {
    return Objects.hash(dishes, ingredients, cuisines, modifiers);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20018 {\n");
    sb.append("    dishes: ").append(toIndentedString(dishes)).append("\n");
    sb.append("    ingredients: ").append(toIndentedString(ingredients)).append("\n");
    sb.append("    cuisines: ").append(toIndentedString(cuisines)).append("\n");
    sb.append("    modifiers: ").append(toIndentedString(modifiers)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

