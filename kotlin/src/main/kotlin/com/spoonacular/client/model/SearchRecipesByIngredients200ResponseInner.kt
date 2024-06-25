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

package com.spoonacular.client.model

import com.spoonacular.client.model.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param id 
 * @param image 
 * @param imageType 
 * @param likes 
 * @param missedIngredientCount 
 * @param missedIngredients 
 * @param title 
 * @param unusedIngredients 
 * @param usedIngredientCount 
 * @param usedIngredients 
 */


data class SearchRecipesByIngredients200ResponseInner (

    @Json(name = "id")
    val id: kotlin.Int,

    @Json(name = "image")
    val image: kotlin.String,

    @Json(name = "imageType")
    val imageType: kotlin.String,

    @Json(name = "likes")
    val likes: kotlin.Int,

    @Json(name = "missedIngredientCount")
    val missedIngredientCount: kotlin.Int,

    @Json(name = "missedIngredients")
    val missedIngredients: kotlin.collections.Set<SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner>,

    @Json(name = "title")
    val title: kotlin.String,

    @Json(name = "unusedIngredients")
    val unusedIngredients: kotlin.collections.List<kotlin.Any>,

    @Json(name = "usedIngredientCount")
    val usedIngredientCount: java.math.BigDecimal,

    @Json(name = "usedIngredients")
    val usedIngredients: kotlin.collections.Set<SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner>

) {


}

