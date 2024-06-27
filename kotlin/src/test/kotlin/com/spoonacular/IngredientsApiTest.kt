/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package com.spoonacular

import io.kotlintest.shouldBe
import io.kotlintest.specs.ShouldSpec

import com.spoonacular.IngredientsApi
import com.spoonacular.client.model.AutocompleteIngredientSearch200ResponseInner
import com.spoonacular.client.model.ComputeIngredientAmount200Response
import com.spoonacular.client.model.GetIngredientInformation200Response
import com.spoonacular.client.model.GetIngredientSubstitutes200Response
import com.spoonacular.client.model.IngredientSearch200Response
import com.spoonacular.client.model.MapIngredientsToGroceryProducts200ResponseInner
import com.spoonacular.client.model.MapIngredientsToGroceryProductsRequest

class IngredientsApiTest : ShouldSpec() {
    init {
        // uncomment below to create an instance of IngredientsApi
        //val apiInstance = IngredientsApi()

        // to test autocompleteIngredientSearch
        should("test autocompleteIngredientSearch") {
            // uncomment below to test autocompleteIngredientSearch
            //val query : kotlin.String = burger // kotlin.String | The (natural language) search query.
            //val number : kotlin.Int = 10 // kotlin.Int | The maximum number of items to return (between 1 and 100). Defaults to 10.
            //val metaInformation : kotlin.Boolean = false // kotlin.Boolean | Whether to return more meta information about the ingredients.
            //val intolerances : kotlin.String = egg // kotlin.String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
            //val language : kotlin.String = en // kotlin.String | The language of the input. Either 'en' or 'de'.
            //val result : kotlin.collections.Set<AutocompleteIngredientSearch200ResponseInner> = apiInstance.autocompleteIngredientSearch(query, number, metaInformation, intolerances, language)
            //result shouldBe ("TODO")
        }

        // to test computeIngredientAmount
        should("test computeIngredientAmount") {
            // uncomment below to test computeIngredientAmount
            //val id : java.math.BigDecimal = 9266 // java.math.BigDecimal | The id of the ingredient you want the amount for.
            //val nutrient : kotlin.String = protein // kotlin.String | The target nutrient. See a list of supported nutrients.
            //val target : java.math.BigDecimal = 2 // java.math.BigDecimal | The target number of the given nutrient.
            //val unit : kotlin.String = oz // kotlin.String | The target unit.
            //val result : ComputeIngredientAmount200Response = apiInstance.computeIngredientAmount(id, nutrient, target, unit)
            //result shouldBe ("TODO")
        }

        // to test getIngredientInformation
        should("test getIngredientInformation") {
            // uncomment below to test getIngredientInformation
            //val id : kotlin.Int = 1 // kotlin.Int | The item's id.
            //val amount : java.math.BigDecimal = 150 // java.math.BigDecimal | The amount of this ingredient.
            //val unit : kotlin.String = grams // kotlin.String | The unit for the given amount.
            //val result : GetIngredientInformation200Response = apiInstance.getIngredientInformation(id, amount, unit)
            //result shouldBe ("TODO")
        }

        // to test getIngredientSubstitutes
        should("test getIngredientSubstitutes") {
            // uncomment below to test getIngredientSubstitutes
            //val ingredientName : kotlin.String = butter // kotlin.String | The name of the ingredient you want to replace.
            //val result : GetIngredientSubstitutes200Response = apiInstance.getIngredientSubstitutes(ingredientName)
            //result shouldBe ("TODO")
        }

        // to test getIngredientSubstitutesByID
        should("test getIngredientSubstitutesByID") {
            // uncomment below to test getIngredientSubstitutesByID
            //val id : kotlin.Int = 1 // kotlin.Int | The item's id.
            //val result : GetIngredientSubstitutes200Response = apiInstance.getIngredientSubstitutesByID(id)
            //result shouldBe ("TODO")
        }

        // to test ingredientSearch
        should("test ingredientSearch") {
            // uncomment below to test ingredientSearch
            //val query : kotlin.String = burger // kotlin.String | The (natural language) search query.
            //val addChildren : kotlin.Boolean = true // kotlin.Boolean | Whether to add children of found foods.
            //val minProteinPercent : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum percentage of protein the food must have (between 0 and 100).
            //val maxProteinPercent : java.math.BigDecimal = 90 // java.math.BigDecimal | The maximum percentage of protein the food can have (between 0 and 100).
            //val minFatPercent : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum percentage of fat the food must have (between 0 and 100).
            //val maxFatPercent : java.math.BigDecimal = 90 // java.math.BigDecimal | The maximum percentage of fat the food can have (between 0 and 100).
            //val minCarbsPercent : java.math.BigDecimal = 10 // java.math.BigDecimal | The minimum percentage of carbs the food must have (between 0 and 100).
            //val maxCarbsPercent : java.math.BigDecimal = 90 // java.math.BigDecimal | The maximum percentage of carbs the food can have (between 0 and 100).
            //val metaInformation : kotlin.Boolean = false // kotlin.Boolean | Whether to return more meta information about the ingredients.
            //val intolerances : kotlin.String = egg // kotlin.String | A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered. See a full list of supported intolerances.
            //val sort : kotlin.String = calories // kotlin.String | The strategy to sort recipes by. See a full list of supported sorting options.
            //val sortDirection : kotlin.String = asc // kotlin.String | The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending).
            //val offset : kotlin.Int = 56 // kotlin.Int | The number of results to skip (between 0 and 900).
            //val number : kotlin.Int = 10 // kotlin.Int | The maximum number of items to return (between 1 and 100). Defaults to 10.
            //val language : kotlin.String = en // kotlin.String | The language of the input. Either 'en' or 'de'.
            //val result : IngredientSearch200Response = apiInstance.ingredientSearch(query, addChildren, minProteinPercent, maxProteinPercent, minFatPercent, maxFatPercent, minCarbsPercent, maxCarbsPercent, metaInformation, intolerances, sort, sortDirection, offset, number, language)
            //result shouldBe ("TODO")
        }

        // to test ingredientsByIDImage
        should("test ingredientsByIDImage") {
            // uncomment below to test ingredientsByIDImage
            //val id : java.math.BigDecimal = 1082038 // java.math.BigDecimal | The recipe id.
            //val measure : kotlin.String = metric // kotlin.String | Whether the the measures should be 'us' or 'metric'.
            //val result : java.io.File = apiInstance.ingredientsByIDImage(id, measure)
            //result shouldBe ("TODO")
        }

        // to test mapIngredientsToGroceryProducts
        should("test mapIngredientsToGroceryProducts") {
            // uncomment below to test mapIngredientsToGroceryProducts
            //val mapIngredientsToGroceryProductsRequest : MapIngredientsToGroceryProductsRequest = {"ingredients":["eggs","bacon"],"servings":2} // MapIngredientsToGroceryProductsRequest | 
            //val result : kotlin.collections.Set<MapIngredientsToGroceryProducts200ResponseInner> = apiInstance.mapIngredientsToGroceryProducts(mapIngredientsToGroceryProductsRequest)
            //result shouldBe ("TODO")
        }

        // to test visualizeIngredients
        should("test visualizeIngredients") {
            // uncomment below to test visualizeIngredients
            //val ingredientList : kotlin.String = ingredientList_example // kotlin.String | The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n).
            //val servings : java.math.BigDecimal = 8.14 // java.math.BigDecimal | The number of servings.
            //val language : kotlin.String = en // kotlin.String | The language of the input. Either 'en' or 'de'.
            //val measure : kotlin.String = measure_example // kotlin.String | The original system of measurement, either 'metric' or 'us'.
            //val view : kotlin.String = view_example // kotlin.String | How to visualize the ingredients, either 'grid' or 'list'.
            //val defaultCss : kotlin.Boolean = true // kotlin.Boolean | Whether the default CSS should be added to the response.
            //val showBacklink : kotlin.Boolean = true // kotlin.Boolean | Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
            //val result : kotlin.String = apiInstance.visualizeIngredients(ingredientList, servings, language, measure, view, defaultCss, showBacklink)
            //result shouldBe ("TODO")
        }

    }
}