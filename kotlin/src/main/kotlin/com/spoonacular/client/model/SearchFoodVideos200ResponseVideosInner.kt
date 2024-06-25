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
 * @param length 
 * @param rating 
 * @param shortTitle 
 * @param thumbnail 
 * @param views 
 * @param youTubeId 
 */


data class SearchFoodVideos200ResponseVideosInner (

    @Json(name = "title")
    val title: kotlin.String,

    @Json(name = "length")
    val length: kotlin.Int,

    @Json(name = "rating")
    val rating: java.math.BigDecimal,

    @Json(name = "shortTitle")
    val shortTitle: kotlin.String,

    @Json(name = "thumbnail")
    val thumbnail: kotlin.String,

    @Json(name = "views")
    val views: kotlin.Int,

    @Json(name = "youTubeId")
    val youTubeId: kotlin.String

) {


}

