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

import com.spoonacular.client.model.TalkToChatbot200ResponseMediaInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param answerText 
 * @param media 
 */


data class TalkToChatbot200Response (

    @Json(name = "answerText")
    val answerText: kotlin.String,

    @Json(name = "media")
    val media: kotlin.collections.List<TalkToChatbot200ResponseMediaInner>

) {


}

