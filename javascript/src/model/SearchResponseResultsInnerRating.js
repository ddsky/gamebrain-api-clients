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
 * The SearchResponseResultsInnerRating model module.
 * @module model/SearchResponseResultsInnerRating
 * @version 1.0.1
 */
class SearchResponseResultsInnerRating {
    /**
     * Constructs a new <code>SearchResponseResultsInnerRating</code>.
     * @alias module:model/SearchResponseResultsInnerRating
     */
    constructor() { 
        
        SearchResponseResultsInnerRating.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SearchResponseResultsInnerRating</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SearchResponseResultsInnerRating} obj Optional instance to populate.
     * @return {module:model/SearchResponseResultsInnerRating} The populated <code>SearchResponseResultsInnerRating</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SearchResponseResultsInnerRating();

            if (data.hasOwnProperty('mean')) {
                obj['mean'] = ApiClient.convertToType(data['mean'], 'Number');
            }
            if (data.hasOwnProperty('count')) {
                obj['count'] = ApiClient.convertToType(data['count'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>SearchResponseResultsInnerRating</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>SearchResponseResultsInnerRating</code>.
     */
    static validateJSON(data) {

        return true;
    }


}



/**
 * @member {Number} mean
 */
SearchResponseResultsInnerRating.prototype['mean'] = undefined;

/**
 * @member {Number} count
 */
SearchResponseResultsInnerRating.prototype['count'] = undefined;






export default SearchResponseResultsInnerRating;

