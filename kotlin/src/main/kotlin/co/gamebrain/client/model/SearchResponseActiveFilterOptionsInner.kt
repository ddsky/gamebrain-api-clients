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

import co.gamebrain.client.model.SearchResponseActiveFilterOptionsInnerValuesInner

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param key 
 * @param connection 
 * @param propertyValues 
 */


data class SearchResponseActiveFilterOptionsInner (

    @Json(name = "key")
    val key: kotlin.String? = null,

    @Json(name = "connection")
    val connection: kotlin.String? = null,

    @Json(name = "values")
    val propertyValues: kotlin.collections.List<SearchResponseActiveFilterOptionsInnerValuesInner>? = null

) {


}

