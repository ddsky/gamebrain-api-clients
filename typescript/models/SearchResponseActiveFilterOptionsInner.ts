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

import { SearchResponseActiveFilterOptionsInnerValuesInner } from '../models/SearchResponseActiveFilterOptionsInnerValuesInner';
import { HttpFile } from '../http/http';

export class SearchResponseActiveFilterOptionsInner {
    'key'?: string;
    'connection'?: string;
    'values'?: Array<SearchResponseActiveFilterOptionsInnerValuesInner>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "key",
            "baseName": "key",
            "type": "string",
            "format": ""
        },
        {
            "name": "connection",
            "baseName": "connection",
            "type": "string",
            "format": ""
        },
        {
            "name": "values",
            "baseName": "values",
            "type": "Array<SearchResponseActiveFilterOptionsInnerValuesInner>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchResponseActiveFilterOptionsInner.attributeTypeMap;
    }

    public constructor() {
    }
}

