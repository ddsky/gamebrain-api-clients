-module(gamebrain_default_api).

-export([detail/3, detail/4,
         search/9, search/10,
         similar/4, similar/5,
         suggest/4, suggest/5]).

-define(BASE_URL, <<"/v1">>).

%% @doc Get Game Details
%% Get all the details about a game given its id. Details include screenshots, ratings, release dates, videos, description, tags, and much more.
-spec detail(ctx:ctx(), integer(), binary()) -> {ok, gamebrain_game_response:gamebrain_game_response(), gamebrain_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), gamebrain_utils:response_info()}.
detail(Ctx, Id, ApiKey) ->
    detail(Ctx, Id, ApiKey, #{}).

-spec detail(ctx:ctx(), integer(), binary(), maps:map()) -> {ok, gamebrain_game_response:gamebrain_game_response(), gamebrain_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), gamebrain_utils:response_info()}.
detail(Ctx, Id, ApiKey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(gamebrain_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/games/", Id, ""],
    QS = lists:flatten([{<<"api-key">>, ApiKey}])++gamebrain_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = gamebrain_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    gamebrain_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Games
%% Search hundreds of thousands of video games from over 70 platforms. The query can be a game name, a platform, a genre, or any combination
-spec search(ctx:ctx(), binary(), integer(), integer(), binary(), binary(), binary(), boolean(), binary()) -> {ok, gamebrain_search_response:gamebrain_search_response(), gamebrain_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), gamebrain_utils:response_info()}.
search(Ctx, Query, Offset, Limit, Filters, Sort, SortOrder, GenerateFilterOptions, ApiKey) ->
    search(Ctx, Query, Offset, Limit, Filters, Sort, SortOrder, GenerateFilterOptions, ApiKey, #{}).

-spec search(ctx:ctx(), binary(), integer(), integer(), binary(), binary(), binary(), boolean(), binary(), maps:map()) -> {ok, gamebrain_search_response:gamebrain_search_response(), gamebrain_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), gamebrain_utils:response_info()}.
search(Ctx, Query, Offset, Limit, Filters, Sort, SortOrder, GenerateFilterOptions, ApiKey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(gamebrain_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/games"],
    QS = lists:flatten([{<<"query">>, Query}, {<<"offset">>, Offset}, {<<"limit">>, Limit}, {<<"filters">>, Filters}, {<<"sort">>, Sort}, {<<"sort-order">>, SortOrder}, {<<"generate-filter-options">>, GenerateFilterOptions}, {<<"api-key">>, ApiKey}])++gamebrain_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = gamebrain_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    gamebrain_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Similar Games
%% Get games that are similar to the given one.
-spec similar(ctx:ctx(), integer(), integer(), binary()) -> {ok, gamebrain_similar_games_response:gamebrain_similar_games_response(), gamebrain_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), gamebrain_utils:response_info()}.
similar(Ctx, Id, Limit, ApiKey) ->
    similar(Ctx, Id, Limit, ApiKey, #{}).

-spec similar(ctx:ctx(), integer(), integer(), binary(), maps:map()) -> {ok, gamebrain_similar_games_response:gamebrain_similar_games_response(), gamebrain_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), gamebrain_utils:response_info()}.
similar(Ctx, Id, Limit, ApiKey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(gamebrain_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/games/", Id, "/similar"],
    QS = lists:flatten([{<<"limit">>, Limit}, {<<"api-key">>, ApiKey}])++gamebrain_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = gamebrain_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    gamebrain_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Game Suggestions
%% Get game suggestions based on (partial) search queries. For example, the query 'gt' will return games like GTA.
-spec suggest(ctx:ctx(), binary(), integer(), binary()) -> {ok, gamebrain_search_suggestion_response:gamebrain_search_suggestion_response(), gamebrain_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), gamebrain_utils:response_info()}.
suggest(Ctx, Query, Limit, ApiKey) ->
    suggest(Ctx, Query, Limit, ApiKey, #{}).

-spec suggest(ctx:ctx(), binary(), integer(), binary(), maps:map()) -> {ok, gamebrain_search_suggestion_response:gamebrain_search_suggestion_response(), gamebrain_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), gamebrain_utils:response_info()}.
suggest(Ctx, Query, Limit, ApiKey, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(gamebrain_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/games/suggestions"],
    QS = lists:flatten([{<<"query">>, Query}, {<<"limit">>, Limit}, {<<"api-key">>, ApiKey}])++gamebrain_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = gamebrain_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    gamebrain_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


