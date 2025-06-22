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
     * Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.
     * Get Game Details
     * @param id The unique identifier of the game.
     * @param apiKey Your API key for authentication.
     */
    public detailWithHttpInfo(id: number, apiKey: string, _options?: Configuration): Promise<HttpInfo<GameResponse>> {
        const result = this.api.detailWithHttpInfo(id, apiKey, _options);
        return result.toPromise();
    }

    /**
     * Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.
     * Get Game Details
     * @param id The unique identifier of the game.
     * @param apiKey Your API key for authentication.
     */
    public detail(id: number, apiKey: string, _options?: Configuration): Promise<GameResponse> {
        const result = this.api.detail(id, apiKey, _options);
        return result.toPromise();
    }

    /**
     * Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination
     * Search Games
     * @param query The search query, e.g., game name, platform, genre, or any combination.
     * @param offset The number of results to skip before starting to collect the result set.
     * @param limit The maximum number of results to return.
     * @param filters JSON array of filter objects to apply to the search.
     * @param sort The field by which to sort the results.
     * @param sortOrder The sort order: \&#39;asc\&#39; for ascending or \&#39;desc\&#39; for descending.
     * @param generateFilterOptions Whether to generate filter options in the response.
     * @param apiKey Your API key for authentication.
     */
    public searchWithHttpInfo(query: string, offset: number, limit: number, filters: string, sort: string, sortOrder: string, generateFilterOptions: boolean, apiKey: string, _options?: Configuration): Promise<HttpInfo<SearchResponse>> {
        const result = this.api.searchWithHttpInfo(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey, _options);
        return result.toPromise();
    }

    /**
     * Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination
     * Search Games
     * @param query The search query, e.g., game name, platform, genre, or any combination.
     * @param offset The number of results to skip before starting to collect the result set.
     * @param limit The maximum number of results to return.
     * @param filters JSON array of filter objects to apply to the search.
     * @param sort The field by which to sort the results.
     * @param sortOrder The sort order: \&#39;asc\&#39; for ascending or \&#39;desc\&#39; for descending.
     * @param generateFilterOptions Whether to generate filter options in the response.
     * @param apiKey Your API key for authentication.
     */
    public search(query: string, offset: number, limit: number, filters: string, sort: string, sortOrder: string, generateFilterOptions: boolean, apiKey: string, _options?: Configuration): Promise<SearchResponse> {
        const result = this.api.search(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey, _options);
        return result.toPromise();
    }

    /**
     * Get games that are similar to the given one.
     * Get Similar Games
     * @param id 
     * @param limit 
     * @param apiKey 
     */
    public similarWithHttpInfo(id: number, limit: number, apiKey: string, _options?: Configuration): Promise<HttpInfo<SimilarGamesResponse>> {
        const result = this.api.similarWithHttpInfo(id, limit, apiKey, _options);
        return result.toPromise();
    }

    /**
     * Get games that are similar to the given one.
     * Get Similar Games
     * @param id 
     * @param limit 
     * @param apiKey 
     */
    public similar(id: number, limit: number, apiKey: string, _options?: Configuration): Promise<SimilarGamesResponse> {
        const result = this.api.similar(id, limit, apiKey, _options);
        return result.toPromise();
    }

    /**
     * Get game suggestions based on (partial) search queries. For example, the query \'gt\' will return games like GTA.
     * Get Game Suggestions
     * @param query The partial search query to get suggestions for.
     * @param limit The maximum number of suggestions to return.
     * @param apiKey Your API key for authentication.
     */
    public suggestWithHttpInfo(query: string, limit: number, apiKey: string, _options?: Configuration): Promise<HttpInfo<SearchSuggestionResponse>> {
        const result = this.api.suggestWithHttpInfo(query, limit, apiKey, _options);
        return result.toPromise();
    }

    /**
     * Get game suggestions based on (partial) search queries. For example, the query \'gt\' will return games like GTA.
     * Get Game Suggestions
     * @param query The partial search query to get suggestions for.
     * @param limit The maximum number of suggestions to return.
     * @param apiKey Your API key for authentication.
     */
    public suggest(query: string, limit: number, apiKey: string, _options?: Configuration): Promise<SearchSuggestionResponse> {
        const result = this.api.suggest(query, limit, apiKey, _options);
        return result.toPromise();
    }


}



