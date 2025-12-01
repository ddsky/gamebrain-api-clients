import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration} from '../configuration'
import { Observable, of, from } from '../rxjsStub';
import {mergeMap, map} from  '../rxjsStub';
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

import { DefaultApiRequestFactory, DefaultApiResponseProcessor} from "../apis/DefaultApi";
export class ObservableDefaultApi {
    private requestFactory: DefaultApiRequestFactory;
    private responseProcessor: DefaultApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: DefaultApiRequestFactory,
        responseProcessor?: DefaultApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new DefaultApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new DefaultApiResponseProcessor();
    }

    /**
     * Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.
     * Get Game Details
     * @param id The unique identifier of the game.
     * @param apiKey Your API key for authentication.
     */
    public detailWithHttpInfo(id: number, apiKey: string, _options?: Configuration): Observable<HttpInfo<GameResponse>> {
        const requestContextPromise = this.requestFactory.detail(id, apiKey, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.detailWithHttpInfo(rsp)));
            }));
    }

    /**
     * Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.
     * Get Game Details
     * @param id The unique identifier of the game.
     * @param apiKey Your API key for authentication.
     */
    public detail(id: number, apiKey: string, _options?: Configuration): Observable<GameResponse> {
        return this.detailWithHttpInfo(id, apiKey, _options).pipe(map((apiResponse: HttpInfo<GameResponse>) => apiResponse.data));
    }

    /**
     * Get news related to the given game.
     * Get Game News
     * @param id 
     * @param offset 
     * @param limit 
     * @param apiKey 
     */
    public newsWithHttpInfo(id: number, offset: number, limit: number, apiKey: string, _options?: Configuration): Observable<HttpInfo<GameNewsResponse>> {
        const requestContextPromise = this.requestFactory.news(id, offset, limit, apiKey, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.newsWithHttpInfo(rsp)));
            }));
    }

    /**
     * Get news related to the given game.
     * Get Game News
     * @param id 
     * @param offset 
     * @param limit 
     * @param apiKey 
     */
    public news(id: number, offset: number, limit: number, apiKey: string, _options?: Configuration): Observable<GameNewsResponse> {
        return this.newsWithHttpInfo(id, offset, limit, apiKey, _options).pipe(map((apiResponse: HttpInfo<GameNewsResponse>) => apiResponse.data));
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
    public searchWithHttpInfo(query: string, offset: number, limit: number, filters: string, sort: string, sortOrder: string, generateFilterOptions: boolean, apiKey: string, _options?: Configuration): Observable<HttpInfo<SearchResponse>> {
        const requestContextPromise = this.requestFactory.search(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchWithHttpInfo(rsp)));
            }));
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
    public search(query: string, offset: number, limit: number, filters: string, sort: string, sortOrder: string, generateFilterOptions: boolean, apiKey: string, _options?: Configuration): Observable<SearchResponse> {
        return this.searchWithHttpInfo(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey, _options).pipe(map((apiResponse: HttpInfo<SearchResponse>) => apiResponse.data));
    }

    /**
     * Get games that are similar to the given one.
     * Get Similar Games
     * @param id 
     * @param limit 
     * @param apiKey 
     */
    public similarWithHttpInfo(id: number, limit: number, apiKey: string, _options?: Configuration): Observable<HttpInfo<SimilarGamesResponse>> {
        const requestContextPromise = this.requestFactory.similar(id, limit, apiKey, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.similarWithHttpInfo(rsp)));
            }));
    }

    /**
     * Get games that are similar to the given one.
     * Get Similar Games
     * @param id 
     * @param limit 
     * @param apiKey 
     */
    public similar(id: number, limit: number, apiKey: string, _options?: Configuration): Observable<SimilarGamesResponse> {
        return this.similarWithHttpInfo(id, limit, apiKey, _options).pipe(map((apiResponse: HttpInfo<SimilarGamesResponse>) => apiResponse.data));
    }

    /**
     * Get game suggestions based on (partial) search queries. For example, the query \'gt\' will return games like GTA.
     * Get Game Suggestions
     * @param query The partial search query to get suggestions for.
     * @param limit The maximum number of suggestions to return.
     * @param apiKey Your API key for authentication.
     */
    public suggestWithHttpInfo(query: string, limit: number, apiKey: string, _options?: Configuration): Observable<HttpInfo<SearchSuggestionResponse>> {
        const requestContextPromise = this.requestFactory.suggest(query, limit, apiKey, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.suggestWithHttpInfo(rsp)));
            }));
    }

    /**
     * Get game suggestions based on (partial) search queries. For example, the query \'gt\' will return games like GTA.
     * Get Game Suggestions
     * @param query The partial search query to get suggestions for.
     * @param limit The maximum number of suggestions to return.
     * @param apiKey Your API key for authentication.
     */
    public suggest(query: string, limit: number, apiKey: string, _options?: Configuration): Observable<SearchSuggestionResponse> {
        return this.suggestWithHttpInfo(query, limit, apiKey, _options).pipe(map((apiResponse: HttpInfo<SearchSuggestionResponse>) => apiResponse.data));
    }

}
