/**
 * GameBrain API
 * GameBrain API
 *
 * OpenAPI spec version: 1.0.1
 * Contact: mail@gamebrain.co
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { SearchResponseResultsInnerRating } from '../models/SearchResponseResultsInnerRating';
import { HttpFile } from '../http/http';

export class SearchSuggestionResponseResultsInner {
    'id'?: number;
    'year'?: number;
    'name'?: string;
    'genre'?: string;
    'image'?: string;
    'link'?: string;
    'rating'?: SearchResponseResultsInnerRating;
    'adultOnly'?: boolean;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "id",
            "baseName": "id",
            "type": "number",
            "format": ""
        },
        {
            "name": "year",
            "baseName": "year",
            "type": "number",
            "format": ""
        },
        {
            "name": "name",
            "baseName": "name",
            "type": "string",
            "format": ""
        },
        {
            "name": "genre",
            "baseName": "genre",
            "type": "string",
            "format": ""
        },
        {
            "name": "image",
            "baseName": "image",
            "type": "string",
            "format": "uri"
        },
        {
            "name": "link",
            "baseName": "link",
            "type": "string",
            "format": ""
        },
        {
            "name": "rating",
            "baseName": "rating",
            "type": "SearchResponseResultsInnerRating",
            "format": ""
        },
        {
            "name": "adultOnly",
            "baseName": "adult_only",
            "type": "boolean",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchSuggestionResponseResultsInner.attributeTypeMap;
    }

    public constructor() {
    }
}

