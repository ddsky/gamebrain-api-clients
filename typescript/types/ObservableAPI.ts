import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration} from '../configuration'
import { Observable, of, from } from '../rxjsStub';
import {mergeMap, map} from  '../rxjsStub';
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
     * GET v1/games/{id}
     * @param id 
     * @param apiKey 
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
     * GET v1/games/{id}
     * @param id 
     * @param apiKey 
     */
    public detail(id: number, apiKey: string, _options?: Configuration): Observable<GameResponse> {
        return this.detailWithHttpInfo(id, apiKey, _options).pipe(map((apiResponse: HttpInfo<GameResponse>) => apiResponse.data));
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
    public search(query: string, offset: number, limit: number, filters: string, sort: string, sortOrder: string, generateFilterOptions: boolean, apiKey: string, _options?: Configuration): Observable<SearchResponse> {
        return this.searchWithHttpInfo(query, offset, limit, filters, sort, sortOrder, generateFilterOptions, apiKey, _options).pipe(map((apiResponse: HttpInfo<SearchResponse>) => apiResponse.data));
    }

    /**
     * GET v1/games/{id}/similar
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
     * GET v1/games/{id}/similar
     * @param id 
     * @param limit 
     * @param apiKey 
     */
    public similar(id: number, limit: number, apiKey: string, _options?: Configuration): Observable<SimilarGamesResponse> {
        return this.similarWithHttpInfo(id, limit, apiKey, _options).pipe(map((apiResponse: HttpInfo<SimilarGamesResponse>) => apiResponse.data));
    }

    /**
     * GET v1/games/suggestions
     * @param query 
     * @param limit 
     * @param apiKey 
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
     * GET v1/games/suggestions
     * @param query 
     * @param limit 
     * @param apiKey 
     */
    public suggest(query: string, limit: number, apiKey: string, _options?: Configuration): Observable<SearchSuggestionResponse> {
        return this.suggestWithHttpInfo(query, limit, apiKey, _options).pipe(map((apiResponse: HttpInfo<SearchSuggestionResponse>) => apiResponse.data));
    }

}
