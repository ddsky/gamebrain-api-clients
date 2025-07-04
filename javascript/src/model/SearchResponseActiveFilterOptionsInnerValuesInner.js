/**
 * GameBrain API
 * GameBrain API
 *
 * The version of the OpenAPI document: 1.0.1
 * Contact: mail@gamebrain.co
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The SearchResponseActiveFilterOptionsInnerValuesInner model module.
 * @module model/SearchResponseActiveFilterOptionsInnerValuesInner
 * @version 1.0.1
 */
class SearchResponseActiveFilterOptionsInnerValuesInner {
    /**
     * Constructs a new <code>SearchResponseActiveFilterOptionsInnerValuesInner</code>.
     * @alias module:model/SearchResponseActiveFilterOptionsInnerValuesInner
     */
    constructor() { 
        
        SearchResponseActiveFilterOptionsInnerValuesInner.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchResponseActiveFilterOptionsInnerValuesInner</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchResponseActiveFilterOptionsInnerValuesInner} obj Optional instance to populate.
     * @return {module:model/SearchResponseActiveFilterOptionsInnerValuesInner} The populated <code>SearchResponseActiveFilterOptionsInnerValuesInner</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchResponseActiveFilterOptionsInnerValuesInner();

            if (data.hasOwnProperty('match')) {
                obj['match'] = ApiClient.convertToType(data['match'], 'String');
            }
            if (data.hasOwnProperty('value')) {
                obj['value'] = ApiClient.convertToType(data['value'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchResponseActiveFilterOptionsInnerValuesInner</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchResponseActiveFilterOptionsInnerValuesInner</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['match'] && !(typeof data['match'] === 'string' || data['match'] instanceof String)) {
            throw new Error("Expected the field `match` to be a primitive type in the JSON string but got " + data['match']);
        }
        // ensure the json data is a string
        if (data['value'] && !(typeof data['value'] === 'string' || data['value'] instanceof String)) {
            throw new Error("Expected the field `value` to be a primitive type in the JSON string but got " + data['value']);
        }

        return true;
    }


}



/**
 * @member {String} match
 */
SearchResponseActiveFilterOptionsInnerValuesInner.prototype['match'] = undefined;

/**
 * @member {String} value
 */
SearchResponseActiveFilterOptionsInnerValuesInner.prototype['value'] = undefined;






export default SearchResponseActiveFilterOptionsInnerValuesInner;

