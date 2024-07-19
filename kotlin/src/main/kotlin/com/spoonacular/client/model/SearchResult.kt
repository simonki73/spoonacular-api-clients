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
 * @param name 
 * @param image 
 * @param link 
 * @param type 
 * @param kvtable 
 * @param content 
 * @param id 
 * @param relevance 
 */


data class SearchResult (

    @Json(name = "name")
    val name: kotlin.String,

    @Json(name = "image")
    val image: kotlin.String? = null,

    @Json(name = "link")
    val link: kotlin.String? = null,

    @Json(name = "type")
    val type: kotlin.String? = null,

    @Json(name = "kvtable")
    val kvtable: kotlin.String? = null,

    @Json(name = "content")
    val content: kotlin.String? = null,

    @Json(name = "id")
    val id: kotlin.Int? = null,

    @Json(name = "relevance")
    val relevance: java.math.BigDecimal? = null

) {


}

