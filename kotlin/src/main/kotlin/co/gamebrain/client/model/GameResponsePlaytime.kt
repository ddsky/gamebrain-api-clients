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

package co.gamebrain.client.model


import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param percentiles 
 * @param min 
 * @param median 
 * @param max 
 * @param mean 
 * @param mentions 
 */


data class GameResponsePlaytime (

    @Json(name = "percentiles")
    val percentiles: kotlin.collections.List<kotlin.Int>? = null,

    @Json(name = "min")
    val min: kotlin.Int? = null,

    @Json(name = "median")
    val median: kotlin.Int? = null,

    @Json(name = "max")
    val max: kotlin.Int? = null,

    @Json(name = "mean")
    val mean: kotlin.Float? = null,

    @Json(name = "mentions")
    val mentions: kotlin.Int? = null

) {


}

