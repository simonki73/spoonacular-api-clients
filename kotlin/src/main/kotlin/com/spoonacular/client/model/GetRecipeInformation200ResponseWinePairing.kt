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

import com.spoonacular.client.model.GetRecipeInformation200ResponseWinePairingProductMatchesInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param pairedWines 
 * @param pairingText 
 * @param productMatches 
 */


data class GetRecipeInformation200ResponseWinePairing (

    @Json(name = "pairedWines")
    val pairedWines: kotlin.collections.List<kotlin.String>,

    @Json(name = "pairingText")
    val pairingText: kotlin.String,

    @Json(name = "productMatches")
    val productMatches: kotlin.collections.Set<GetRecipeInformation200ResponseWinePairingProductMatchesInner>

) {


}

