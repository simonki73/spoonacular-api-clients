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

import com.spoonacular.client.model.GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param aisle 
 * @param amount 
 * @param consitency 
 * @param id 
 * @param image 
 * @param name 
 * @param original 
 * @param originalName 
 * @param unit 
 * @param measures 
 * @param meta 
 */


data class GetRecipeInformation200ResponseExtendedIngredientsInner (

    @Json(name = "aisle")
    val aisle: kotlin.String,

    @Json(name = "amount")
    val amount: java.math.BigDecimal,

    @Json(name = "consitency")
    val consitency: kotlin.String,

    @Json(name = "id")
    val id: kotlin.Int,

    @Json(name = "image")
    val image: kotlin.String,

    @Json(name = "name")
    val name: kotlin.String,

    @Json(name = "original")
    val original: kotlin.String,

    @Json(name = "originalName")
    val originalName: kotlin.String,

    @Json(name = "unit")
    val unit: kotlin.String,

    @Json(name = "measures")
    val measures: GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures? = null,

    @Json(name = "meta")
    val meta: kotlin.collections.List<kotlin.String>? = null

) {


}

