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
import { ObservableDefaultApi } from './ObservableAPI';

import { DefaultApiRequestFactory, DefaultApiResponseProcessor} from "../apis/DefaultApi";
export class PromiseDefaultApi {
    private api: ObservableDefaultApi

    public constructor(
        configuration: Configuration,
        requestFactory?: DefaultApiRequestFactory,
        responseProcessor?: DefaultApiResponseProcessor
    ) {
        this.api = new ObservableDefaultApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * GET v1/games/{id}
     * @param id 
     * @param apiKey 
     */
    public detailWithHttpInfo(id: number, apiKey: string, _options?: Configuration): Promise<HttpInfo<GameResponse>> {
        const result = this.api.detailWithHttpInfo(id, apiKey, _options);
        return result.toPromise();
    }

    /**
     * GET v1/games/{id}
     * @param id 
     * @param apiKey 
     */
    public detail(id: number, apiKey: string, _options?: Configuration): Promise<GameResponse> {
        const result = this.api.detail(id, apiKey, _options);
        return result.toPromise();
    }

    /**
     * GET v1/games
     * @param query 
     * @param offset 
     * @param limit 
     * @param filters 
     * @param sort 
     * @param sortOrder 
     * @param generateFilterOptions 
     * @param apiKey 
     */
    public searchWithHttpInfo(query: string, offset: number, limit: number, filters: string, sort: string, sortOrder: string, generateFilterOptions: boolean, apiKey: string, _options?: Configuration): Promise<HttpInfo<SearchResponse>> {
        const result = this.api.searchWithHttpInfo(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey, _options);
        return result.toPromise();
    }

    /**
     * GET v1/games
     * @param query 
     * @param offset 
     * @param limit 
     * @param filters 
     * @param sort 
     * @param sortOrder 
     * @param generateFilterOptions 
     * @param apiKey 
     */
    public search(query: string, offset: number, limit: number, filters: string, sort: string, sortOrder: string, generateFilterOptions: boolean, apiKey: string, _options?: Configuration): Promise<SearchResponse> {
        const result = this.api.search(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey, _options);
        return result.toPromise();
    }

    /**
     * GET v1/games/{id}/similar
     * @param id 
     * @param limit 
     * @param apiKey 
     */
    public similarWithHttpInfo(id: number, limit: number, apiKey: string, _options?: Configuration): Promise<HttpInfo<SimilarGamesResponse>> {
        const result = this.api.similarWithHttpInfo(id, limit, apiKey, _options);
        return result.toPromise();
    }

    /**
     * GET v1/games/{id}/similar
     * @param id 
     * @param limit 
     * @param apiKey 
     */
    public similar(id: number, limit: number, apiKey: string, _options?: Configuration): Promise<SimilarGamesResponse> {
        const result = this.api.similar(id, limit, apiKey, _options);
        return result.toPromise();
    }

    /**
     * GET v1/games/suggestions
     * @param query 
     * @param limit 
     * @param apiKey 
     */
    public suggestWithHttpInfo(query: string, limit: number, apiKey: string, _options?: Configuration): Promise<HttpInfo<SearchSuggestionResponse>> {
        const result = this.api.suggestWithHttpInfo(query, limit, apiKey, _options);
        return result.toPromise();
    }

    /**
     * GET v1/games/suggestions
     * @param query 
     * @param limit 
     * @param apiKey 
     */
    public suggest(query: string, limit: number, apiKey: string, _options?: Configuration): Promise<SearchSuggestionResponse> {
        const result = this.api.suggest(query, limit, apiKey, _options);
        return result.toPromise();
    }


}



