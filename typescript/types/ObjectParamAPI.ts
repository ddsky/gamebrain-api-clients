import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration} from '../configuration'

import { GameNewsItem } from '../models/GameNewsItem';
import { GameNewsResponse } from '../models/GameNewsResponse';
import { GameResponse } from '../models/GameResponse';
import { GameResponseOffersInner } from '../models/GameResponseOffersInner';
import { GameResponseOffersInnerPrice } from '../models/GameResponseOffersInnerPrice';
import { GameResponseOfficialStoresInner } from '../models/GameResponseOfficialStoresInner';
import { GameResponsePlatformsInner } from '../models/GameResponsePlatformsInner';
import { GameResponsePlaytime } from '../models/GameResponsePlaytime';
import { GameResponseRating } from '../models/GameResponseRating';
import { SearchResponse } from '../models/SearchResponse';
import { SearchResponseActiveFilterOptionsInner } from '../models/SearchResponseActiveFilterOptionsInner';
import { SearchResponseActiveFilterOptionsInnerValuesInner } from '../models/SearchResponseActiveFilterOptionsInnerValuesInner';
import { SearchResponseFilterOptionsInner } from '../models/SearchResponseFilterOptionsInner';
import { SearchResponseFilterOptionsInnerValuesInner } from '../models/SearchResponseFilterOptionsInnerValuesInner';
import { SearchResponseResultsInner } from '../models/SearchResponseResultsInner';
import { SearchResponseResultsInnerRating } from '../models/SearchResponseResultsInnerRating';
import { SearchResponseSorting } from '../models/SearchResponseSorting';
import { SearchResponseSortingOptionsInner } from '../models/SearchResponseSortingOptionsInner';
import { SearchSuggestionResponse } from '../models/SearchSuggestionResponse';
import { SearchSuggestionResponseResultsInner } from '../models/SearchSuggestionResponseResultsInner';
import { SimilarGamesResponse } from '../models/SimilarGamesResponse';

import { ObservableDefaultApi } from "./ObservableAPI";
import { DefaultApiRequestFactory, DefaultApiResponseProcessor} from "../apis/DefaultApi";

export interface DefaultApiDetailRequest {
    /**
     * The unique identifier of the game.
     * @type number
     * @memberof DefaultApidetail
     */
    id: number
    /**
     * Your API key for authentication.
     * @type string
     * @memberof DefaultApidetail
     */
    apiKey: string
}

export interface DefaultApiNewsRequest {
    /**
     * 
     * @type number
     * @memberof DefaultApinews
     */
    id: number
    /**
     * 
     * @type number
     * @memberof DefaultApinews
     */
    offset: number
    /**
     * 
     * @type number
     * @memberof DefaultApinews
     */
    limit: number
    /**
     * 
     * @type string
     * @memberof DefaultApinews
     */
    apiKey: string
}

export interface DefaultApiSearchRequest {
    /**
     * The search query, e.g., game name, platform, genre, or any combination.
     * @type string
     * @memberof DefaultApisearch
     */
    query: string
    /**
     * The number of results to skip before starting to collect the result set. Between 0 and 1000.
     * @type number
     * @memberof DefaultApisearch
     */
    offset: number
    /**
     * The maximum number of results to return between 1 and 10.
     * @type number
     * @memberof DefaultApisearch
     */
    limit: number
    /**
     * JSON array of filter objects to apply to the search.
     * @type string
     * @memberof DefaultApisearch
     */
    filters: string
    /**
     * The field by which to sort the results, either computed_rating, price, or release_date
     * @type string
     * @memberof DefaultApisearch
     */
    sort: string
    /**
     * The sort order: \&#39;asc\&#39; for ascending or \&#39;desc\&#39; for descending.
     * @type string
     * @memberof DefaultApisearch
     */
    sortOrder: string
    /**
     * Whether to generate filter options in the response.
     * @type boolean
     * @memberof DefaultApisearch
     */
    generateFilterOptions: boolean
    /**
     * Your API key for authentication.
     * @type string
     * @memberof DefaultApisearch
     */
    apiKey: string
}

export interface DefaultApiSimilarRequest {
    /**
     * 
     * @type number
     * @memberof DefaultApisimilar
     */
    id: number
    /**
     * 
     * @type number
     * @memberof DefaultApisimilar
     */
    limit: number
    /**
     * 
     * @type string
     * @memberof DefaultApisimilar
     */
    apiKey: string
}

export interface DefaultApiSuggestRequest {
    /**
     * The partial search query to get suggestions for.
     * @type string
     * @memberof DefaultApisuggest
     */
    query: string
    /**
     * The maximum number of suggestions to return.
     * @type number
     * @memberof DefaultApisuggest
     */
    limit: number
    /**
     * Your API key for authentication.
     * @type string
     * @memberof DefaultApisuggest
     */
    apiKey: string
}

export class ObjectDefaultApi {
    private api: ObservableDefaultApi

    public constructor(configuration: Configuration, requestFactory?: DefaultApiRequestFactory, responseProcessor?: DefaultApiResponseProcessor) {
        this.api = new ObservableDefaultApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.
     * Get Game Details
     * @param param the request object
     */
    public detailWithHttpInfo(param: DefaultApiDetailRequest, options?: Configuration): Promise<HttpInfo<GameResponse>> {
        return this.api.detailWithHttpInfo(param.id, param.apiKey,  options).toPromise();
    }

    /**
     * Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.
     * Get Game Details
     * @param param the request object
     */
    public detail(param: DefaultApiDetailRequest, options?: Configuration): Promise<GameResponse> {
        return this.api.detail(param.id, param.apiKey,  options).toPromise();
    }

    /**
     * Get news related to the given game.
     * Get Game News
     * @param param the request object
     */
    public newsWithHttpInfo(param: DefaultApiNewsRequest, options?: Configuration): Promise<HttpInfo<GameNewsResponse>> {
        return this.api.newsWithHttpInfo(param.id, param.offset, param.limit, param.apiKey,  options).toPromise();
    }

    /**
     * Get news related to the given game.
     * Get Game News
     * @param param the request object
     */
    public news(param: DefaultApiNewsRequest, options?: Configuration): Promise<GameNewsResponse> {
        return this.api.news(param.id, param.offset, param.limit, param.apiKey,  options).toPromise();
    }

    /**
     * Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination
     * Search Games
     * @param param the request object
     */
    public searchWithHttpInfo(param: DefaultApiSearchRequest, options?: Configuration): Promise<HttpInfo<SearchResponse>> {
        return this.api.searchWithHttpInfo(param.query, param.offset, param.limit, param.filters, param.sort, param.sortOrder, param.generateFilterOptions, param.apiKey,  options).toPromise();
    }

    /**
     * Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination
     * Search Games
     * @param param the request object
     */
    public search(param: DefaultApiSearchRequest, options?: Configuration): Promise<SearchResponse> {
        return this.api.search(param.query, param.offset, param.limit, param.filters, param.sort, param.sortOrder, param.generateFilterOptions, param.apiKey,  options).toPromise();
    }

    /**
     * Get games that are similar to the given one.
     * Get Similar Games
     * @param param the request object
     */
    public similarWithHttpInfo(param: DefaultApiSimilarRequest, options?: Configuration): Promise<HttpInfo<SimilarGamesResponse>> {
        return this.api.similarWithHttpInfo(param.id, param.limit, param.apiKey,  options).toPromise();
    }

    /**
     * Get games that are similar to the given one.
     * Get Similar Games
     * @param param the request object
     */
    public similar(param: DefaultApiSimilarRequest, options?: Configuration): Promise<SimilarGamesResponse> {
        return this.api.similar(param.id, param.limit, param.apiKey,  options).toPromise();
    }

    /**
     * Get game suggestions based on (partial) search queries. For example, the query \'gt\' will return games like GTA.
     * Get Game Suggestions
     * @param param the request object
     */
    public suggestWithHttpInfo(param: DefaultApiSuggestRequest, options?: Configuration): Promise<HttpInfo<SearchSuggestionResponse>> {
        return this.api.suggestWithHttpInfo(param.query, param.limit, param.apiKey,  options).toPromise();
    }

    /**
     * Get game suggestions based on (partial) search queries. For example, the query \'gt\' will return games like GTA.
     * Get Game Suggestions
     * @param param the request object
     */
    public suggest(param: DefaultApiSuggestRequest, options?: Configuration): Promise<SearchSuggestionResponse> {
        return this.api.suggest(param.query, param.limit, param.apiKey,  options).toPromise();
    }

}
