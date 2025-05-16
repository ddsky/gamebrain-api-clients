import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration} from '../configuration'

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
     * 
     * @type number
     * @memberof DefaultApidetail
     */
    id: number
    /**
     * 
     * @type string
     * @memberof DefaultApidetail
     */
    apiKey: string
}

export interface DefaultApiSearchRequest {
    /**
     * 
     * @type string
     * @memberof DefaultApisearch
     */
    query: string
    /**
     * 
     * @type number
     * @memberof DefaultApisearch
     */
    offset: number
    /**
     * 
     * @type number
     * @memberof DefaultApisearch
     */
    limit: number
    /**
     * 
     * @type string
     * @memberof DefaultApisearch
     */
    filters: string
    /**
     * 
     * @type string
     * @memberof DefaultApisearch
     */
    sort: string
    /**
     * 
     * @type string
     * @memberof DefaultApisearch
     */
    sortOrder: string
    /**
     * 
     * @type boolean
     * @memberof DefaultApisearch
     */
    generateFilterOptions: boolean
    /**
     * 
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
     * 
     * @type string
     * @memberof DefaultApisuggest
     */
    query: string
    /**
     * 
     * @type number
     * @memberof DefaultApisuggest
     */
    limit: number
    /**
     * 
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
     * GET v1/games/{id}
     * @param param the request object
     */
    public detailWithHttpInfo(param: DefaultApiDetailRequest, options?: Configuration): Promise<HttpInfo<GameResponse>> {
        return this.api.detailWithHttpInfo(param.id, param.apiKey,  options).toPromise();
    }

    /**
     * GET v1/games/{id}
     * @param param the request object
     */
    public detail(param: DefaultApiDetailRequest, options?: Configuration): Promise<GameResponse> {
        return this.api.detail(param.id, param.apiKey,  options).toPromise();
    }

    /**
     * GET v1/games
     * @param param the request object
     */
    public searchWithHttpInfo(param: DefaultApiSearchRequest, options?: Configuration): Promise<HttpInfo<SearchResponse>> {
        return this.api.searchWithHttpInfo(param.query, param.offset, param.limit, param.filters, param.sort, param.sortOrder, param.generateFilterOptions, param.apiKey,  options).toPromise();
    }

    /**
     * GET v1/games
     * @param param the request object
     */
    public search(param: DefaultApiSearchRequest, options?: Configuration): Promise<SearchResponse> {
        return this.api.search(param.query, param.offset, param.limit, param.filters, param.sort, param.sortOrder, param.generateFilterOptions, param.apiKey,  options).toPromise();
    }

    /**
     * GET v1/games/{id}/similar
     * @param param the request object
     */
    public similarWithHttpInfo(param: DefaultApiSimilarRequest, options?: Configuration): Promise<HttpInfo<SimilarGamesResponse>> {
        return this.api.similarWithHttpInfo(param.id, param.limit, param.apiKey,  options).toPromise();
    }

    /**
     * GET v1/games/{id}/similar
     * @param param the request object
     */
    public similar(param: DefaultApiSimilarRequest, options?: Configuration): Promise<SimilarGamesResponse> {
        return this.api.similar(param.id, param.limit, param.apiKey,  options).toPromise();
    }

    /**
     * GET v1/games/suggestions
     * @param param the request object
     */
    public suggestWithHttpInfo(param: DefaultApiSuggestRequest, options?: Configuration): Promise<HttpInfo<SearchSuggestionResponse>> {
        return this.api.suggestWithHttpInfo(param.query, param.limit, param.apiKey,  options).toPromise();
    }

    /**
     * GET v1/games/suggestions
     * @param param the request object
     */
    public suggest(param: DefaultApiSuggestRequest, options?: Configuration): Promise<SearchSuggestionResponse> {
        return this.api.suggest(param.query, param.limit, param.apiKey,  options).toPromise();
    }

}
