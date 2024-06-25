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
 * @param number 
 * @param propertySize 
 * @param unit 
 */


data class SearchGroceryProductsByUPC200ResponseServings (

    @Json(name = "number")
    val number: java.math.BigDecimal,

    @Json(name = "size")
    val propertySize: java.math.BigDecimal,

    @Json(name = "unit")
    val unit: kotlin.String

) {


}

