// TODO: better import syntax?
import {BaseAPIRequestFactory, RequiredError, COLLECTION_FORMATS} from './baseapi';
import {Configuration} from '../configuration';
import {RequestContext, HttpMethod, ResponseContext, HttpFile, HttpInfo} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {canConsumeForm, isCodeInRange} from '../util';
import {SecurityAuthentication} from '../auth/auth';


import { GameNewsResponse } from '../models/GameNewsResponse';
import { GameResponse } from '../models/GameResponse';
import { SearchResponse } from '../models/SearchResponse';
import { SearchSuggestionResponse } from '../models/SearchSuggestionResponse';
import { SimilarGamesResponse } from '../models/SimilarGamesResponse';

/**
 * no description
 */
export class DefaultApiRequestFactory extends BaseAPIRequestFactory {

    /**
     * Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.
     * Get Game Details
     * @param id The unique identifier of the game.
     * @param apiKey Your API key for authentication.
     */
    public async detail(id: number, apiKey: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DefaultApi", "detail", "id");
        }


        // verify required parameter 'apiKey' is not null or undefined
        if (apiKey === null || apiKey === undefined) {
            throw new RequiredError("DefaultApi", "detail", "apiKey");
        }


        // Path Params
        const localVarPath = '/games/{id}'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (apiKey !== undefined) {
            requestContext.setQueryParam("api-key", ObjectSerializer.serialize(apiKey, "string", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["headerApiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Get news related to the given game.
     * Get Game News
     * @param id 
     * @param offset 
     * @param limit 
     * @param apiKey 
     */
    public async news(id: number, offset: number, limit: number, apiKey: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DefaultApi", "news", "id");
        }


        // verify required parameter 'offset' is not null or undefined
        if (offset === null || offset === undefined) {
            throw new RequiredError("DefaultApi", "news", "offset");
        }


        // verify required parameter 'limit' is not null or undefined
        if (limit === null || limit === undefined) {
            throw new RequiredError("DefaultApi", "news", "limit");
        }


        // verify required parameter 'apiKey' is not null or undefined
        if (apiKey === null || apiKey === undefined) {
            throw new RequiredError("DefaultApi", "news", "apiKey");
        }


        // Path Params
        const localVarPath = '/games/{id}/news'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (offset !== undefined) {
            requestContext.setQueryParam("offset", ObjectSerializer.serialize(offset, "number", "int32"));
        }

        // Query Params
        if (limit !== undefined) {
            requestContext.setQueryParam("limit", ObjectSerializer.serialize(limit, "number", "int32"));
        }

        // Query Params
        if (apiKey !== undefined) {
            requestContext.setQueryParam("api-key", ObjectSerializer.serialize(apiKey, "string", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["headerApiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination
     * Search Games
     * @param query The search query, e.g., game name, platform, genre, or any combination.
     * @param offset The number of results to skip before starting to collect the result set. Between 0 and 1000.
     * @param limit The maximum number of results to return between 1 and 10.
     * @param filters JSON array of filter objects to apply to the search.
     * @param sort The field by which to sort the results, either computed_rating, price, or release_date
     * @param sortOrder The sort order: \&#39;asc\&#39; for ascending or \&#39;desc\&#39; for descending.
     * @param generateFilterOptions Whether to generate filter options in the response.
     * @param apiKey Your API key for authentication.
     */
    public async search(query: string, offset: number, limit: number, filters: string, sort: string, sortOrder: string, generateFilterOptions: boolean, apiKey: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'query' is not null or undefined
        if (query === null || query === undefined) {
            throw new RequiredError("DefaultApi", "search", "query");
        }


        // verify required parameter 'offset' is not null or undefined
        if (offset === null || offset === undefined) {
            throw new RequiredError("DefaultApi", "search", "offset");
        }


        // verify required parameter 'limit' is not null or undefined
        if (limit === null || limit === undefined) {
            throw new RequiredError("DefaultApi", "search", "limit");
        }


        // verify required parameter 'filters' is not null or undefined
        if (filters === null || filters === undefined) {
            throw new RequiredError("DefaultApi", "search", "filters");
        }


        // verify required parameter 'sort' is not null or undefined
        if (sort === null || sort === undefined) {
            throw new RequiredError("DefaultApi", "search", "sort");
        }


        // verify required parameter 'sortOrder' is not null or undefined
        if (sortOrder === null || sortOrder === undefined) {
            throw new RequiredError("DefaultApi", "search", "sortOrder");
        }


        // verify required parameter 'generateFilterOptions' is not null or undefined
        if (generateFilterOptions === null || generateFilterOptions === undefined) {
            throw new RequiredError("DefaultApi", "search", "generateFilterOptions");
        }


        // verify required parameter 'apiKey' is not null or undefined
        if (apiKey === null || apiKey === undefined) {
            throw new RequiredError("DefaultApi", "search", "apiKey");
        }


        // Path Params
        const localVarPath = '/games';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (query !== undefined) {
            requestContext.setQueryParam("query", ObjectSerializer.serialize(query, "string", ""));
        }

        // Query Params
        if (offset !== undefined) {
            requestContext.setQueryParam("offset", ObjectSerializer.serialize(offset, "number", "int32"));
        }

        // Query Params
        if (limit !== undefined) {
            requestContext.setQueryParam("limit", ObjectSerializer.serialize(limit, "number", "int32"));
        }

        // Query Params
        if (filters !== undefined) {
            requestContext.setQueryParam("filters", ObjectSerializer.serialize(filters, "string", ""));
        }

        // Query Params
        if (sort !== undefined) {
            requestContext.setQueryParam("sort", ObjectSerializer.serialize(sort, "string", ""));
        }

        // Query Params
        if (sortOrder !== undefined) {
            requestContext.setQueryParam("sort-order", ObjectSerializer.serialize(sortOrder, "string", ""));
        }

        // Query Params
        if (generateFilterOptions !== undefined) {
            requestContext.setQueryParam("generate-filter-options", ObjectSerializer.serialize(generateFilterOptions, "boolean", ""));
        }

        // Query Params
        if (apiKey !== undefined) {
            requestContext.setQueryParam("api-key", ObjectSerializer.serialize(apiKey, "string", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["headerApiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Get games that are similar to the given one.
     * Get Similar Games
     * @param id 
     * @param limit 
     * @param apiKey 
     */
    public async similar(id: number, limit: number, apiKey: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DefaultApi", "similar", "id");
        }


        // verify required parameter 'limit' is not null or undefined
        if (limit === null || limit === undefined) {
            throw new RequiredError("DefaultApi", "similar", "limit");
        }


        // verify required parameter 'apiKey' is not null or undefined
        if (apiKey === null || apiKey === undefined) {
            throw new RequiredError("DefaultApi", "similar", "apiKey");
        }


        // Path Params
        const localVarPath = '/games/{id}/similar'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (limit !== undefined) {
            requestContext.setQueryParam("limit", ObjectSerializer.serialize(limit, "number", "int32"));
        }

        // Query Params
        if (apiKey !== undefined) {
            requestContext.setQueryParam("api-key", ObjectSerializer.serialize(apiKey, "string", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["headerApiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Get game suggestions based on (partial) search queries. For example, the query \'gt\' will return games like GTA.
     * Get Game Suggestions
     * @param query The partial search query to get suggestions for.
     * @param limit The maximum number of suggestions to return.
     * @param apiKey Your API key for authentication.
     */
    public async suggest(query: string, limit: number, apiKey: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'query' is not null or undefined
        if (query === null || query === undefined) {
            throw new RequiredError("DefaultApi", "suggest", "query");
        }


        // verify required parameter 'limit' is not null or undefined
        if (limit === null || limit === undefined) {
            throw new RequiredError("DefaultApi", "suggest", "limit");
        }


        // verify required parameter 'apiKey' is not null or undefined
        if (apiKey === null || apiKey === undefined) {
            throw new RequiredError("DefaultApi", "suggest", "apiKey");
        }


        // Path Params
        const localVarPath = '/games/suggestions';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (query !== undefined) {
            requestContext.setQueryParam("query", ObjectSerializer.serialize(query, "string", ""));
        }

        // Query Params
        if (limit !== undefined) {
            requestContext.setQueryParam("limit", ObjectSerializer.serialize(limit, "number", "int32"));
        }

        // Query Params
        if (apiKey !== undefined) {
            requestContext.setQueryParam("api-key", ObjectSerializer.serialize(apiKey, "string", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["headerApiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

}

export class DefaultApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to detail
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async detailWithHttpInfo(response: ResponseContext): Promise<HttpInfo<GameResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GameResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GameResponse", ""
            ) as GameResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: GameResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GameResponse", ""
            ) as GameResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to news
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async newsWithHttpInfo(response: ResponseContext): Promise<HttpInfo<GameNewsResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GameNewsResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GameNewsResponse", ""
            ) as GameNewsResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: GameNewsResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GameNewsResponse", ""
            ) as GameNewsResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to search
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async searchWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SearchResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SearchResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchResponse", ""
            ) as SearchResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SearchResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchResponse", ""
            ) as SearchResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to similar
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async similarWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SimilarGamesResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SimilarGamesResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SimilarGamesResponse", ""
            ) as SimilarGamesResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SimilarGamesResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SimilarGamesResponse", ""
            ) as SimilarGamesResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to suggest
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async suggestWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SearchSuggestionResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SearchSuggestionResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchSuggestionResponse", ""
            ) as SearchSuggestionResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SearchSuggestionResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchSuggestionResponse", ""
            ) as SearchSuggestionResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

}
