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


import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param title 
 * @param servings 
 * @param ingredients 
 * @param instructions 
 */


data class AnalyzeRecipeRequest1 (

    @Json(name = "title")
    val title: kotlin.String? = null,

    @Json(name = "servings")
    val servings: kotlin.Int? = null,

    @Json(name = "ingredients")
    val ingredients: kotlin.collections.List<kotlin.String>? = null,

    @Json(name = "instructions")
    val instructions: kotlin.String? = null

)
