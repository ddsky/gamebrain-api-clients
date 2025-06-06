/**
 * GameBrain API
 * GameBrain API
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import GameResponse from '../model/GameResponse';
import SearchResponse from '../model/SearchResponse';
import SearchSuggestionResponse from '../model/SearchSuggestionResponse';
import SimilarGamesResponse from '../model/SimilarGamesResponse';

/**
* Default service.
* @module api/DefaultApi
* @version 1.0.0
*/
export default class DefaultApi {

    /**
    * Constructs a new DefaultApi. 
    * @alias module:api/DefaultApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the detail operation.
     * @callback module:api/DefaultApi~detailCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GameResponse} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GET v1/games/{id}
     * @param {Number} id 
     * @param {String} apiKey 
     * @param {module:api/DefaultApi~detailCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GameResponse}
     */
    detail(id, apiKey, callback) {
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling detail");
      }
      // verify the required parameter 'apiKey' is set
      if (apiKey === undefined || apiKey === null) {
        throw new Error("Missing the required parameter 'apiKey' when calling detail");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
        'api-key': apiKey
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = GameResponse;
      return this.apiClient.callApi(
        '/games/{id}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the search operation.
     * @callback module:api/DefaultApi~searchCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchResponse} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GET v1/games
     * @param {String} query 
     * @param {Number} offset 
     * @param {Number} limit 
     * @param {String} filters 
     * @param {String} sort 
     * @param {String} sortOrder 
     * @param {Boolean} generateFilterOptions 
     * @param {String} apiKey 
     * @param {module:api/DefaultApi~searchCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchResponse}
     */
    search(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey, callback) {
      let postBody = null;
      // verify the required parameter 'query' is set
      if (query === undefined || query === null) {
        throw new Error("Missing the required parameter 'query' when calling search");
      }
      // verify the required parameter 'offset' is set
      if (offset === undefined || offset === null) {
        throw new Error("Missing the required parameter 'offset' when calling search");
      }
      // verify the required parameter 'limit' is set
      if (limit === undefined || limit === null) {
        throw new Error("Missing the required parameter 'limit' when calling search");
      }
      // verify the required parameter 'filters' is set
      if (filters === undefined || filters === null) {
        throw new Error("Missing the required parameter 'filters' when calling search");
      }
      // verify the required parameter 'sort' is set
      if (sort === undefined || sort === null) {
        throw new Error("Missing the required parameter 'sort' when calling search");
      }
      // verify the required parameter 'sortOrder' is set
      if (sortOrder === undefined || sortOrder === null) {
        throw new Error("Missing the required parameter 'sortOrder' when calling search");
      }
      // verify the required parameter 'generateFilterOptions' is set
      if (generateFilterOptions === undefined || generateFilterOptions === null) {
        throw new Error("Missing the required parameter 'generateFilterOptions' when calling search");
      }
      // verify the required parameter 'apiKey' is set
      if (apiKey === undefined || apiKey === null) {
        throw new Error("Missing the required parameter 'apiKey' when calling search");
      }

      let pathParams = {
      };
      let queryParams = {
        'query': query,
        'offset': offset,
        'limit': limit,
        'filters': filters,
        'sort': sort,
        'sort-order': sortOrder,
        'generate-filter-options': generateFilterOptions,
        'api-key': apiKey
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SearchResponse;
      return this.apiClient.callApi(
        '/games', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the similar operation.
     * @callback module:api/DefaultApi~similarCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SimilarGamesResponse} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GET v1/games/{id}/similar
     * @param {Number} id 
     * @param {Number} limit 
     * @param {String} apiKey 
     * @param {module:api/DefaultApi~similarCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SimilarGamesResponse}
     */
    similar(id, limit, apiKey, callback) {
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling similar");
      }
      // verify the required parameter 'limit' is set
      if (limit === undefined || limit === null) {
        throw new Error("Missing the required parameter 'limit' when calling similar");
      }
      // verify the required parameter 'apiKey' is set
      if (apiKey === undefined || apiKey === null) {
        throw new Error("Missing the required parameter 'apiKey' when calling similar");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
        'limit': limit,
        'api-key': apiKey
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SimilarGamesResponse;
      return this.apiClient.callApi(
        '/games/{id}/similar', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the suggest operation.
     * @callback module:api/DefaultApi~suggestCallback
     * @param {String} error Error message, if any.
     * @param {module:model/SearchSuggestionResponse} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GET v1/games/suggestions
     * @param {String} query 
     * @param {Number} limit 
     * @param {String} apiKey 
     * @param {module:api/DefaultApi~suggestCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/SearchSuggestionResponse}
     */
    suggest(query, limit, apiKey, callback) {
      let postBody = null;
      // verify the required parameter 'query' is set
      if (query === undefined || query === null) {
        throw new Error("Missing the required parameter 'query' when calling suggest");
      }
      // verify the required parameter 'limit' is set
      if (limit === undefined || limit === null) {
        throw new Error("Missing the required parameter 'limit' when calling suggest");
      }
      // verify the required parameter 'apiKey' is set
      if (apiKey === undefined || apiKey === null) {
        throw new Error("Missing the required parameter 'apiKey' when calling suggest");
      }

      let pathParams = {
      };
      let queryParams = {
        'query': query,
        'limit': limit,
        'api-key': apiKey
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = SearchSuggestionResponse;
      return this.apiClient.callApi(
        '/games/suggestions', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
