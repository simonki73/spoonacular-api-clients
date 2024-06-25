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

import com.spoonacular.client.model.GetShoppingList200ResponseAislesInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param aisles 
 * @param cost 
 * @param startDate 
 * @param endDate 
 */


data class GetShoppingList200Response (

    @Json(name = "aisles")
    val aisles: kotlin.collections.Set<GetShoppingList200ResponseAislesInner>,

    @Json(name = "cost")
    val cost: java.math.BigDecimal,

    @Json(name = "startDate")
    val startDate: java.math.BigDecimal,

    @Json(name = "endDate")
    val endDate: java.math.BigDecimal

) {


}

