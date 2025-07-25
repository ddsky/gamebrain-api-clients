-module(gamebrain_utils).

-export([request/8,
         select_header_content_type/1,
         optional_params/2]).

-type response_info() :: #{status  := integer(),
                           headers := list()}.
-export_type([response_info/0]).

request(_Ctx, Method, Path, QS, Headers, Body, Opts, Cfg) ->
    {Headers1, QS1} = update_params_with_auth(Cfg, Headers, QS),
    Host = maps:get(host, Cfg, "localhost:8001"),
    Path1 = prepare_path(Path),
    Url = hackney_url:make_url(Host, Path1, QS1),

    ConfigHackneyOpts = maps:get(hackney_opts, Cfg, []),
    Body1 = case lists:keyfind(<<"Content-Type">>, 1, Headers1) of
                {_, <<"application/json", _/binary>>} ->
                    jsx:encode(Body);
                _ ->
                    Body
            end,

    case hackney:request(Method, Url, Headers1, Body1, Opts++ConfigHackneyOpts) of
        {ok, ClientRef} ->
            %% return value if Opts includes `async`
            {ok, ClientRef};
        {ok, Status, RespHeaders, ClientRef} when Status >= 200,
                                                  Status =< 299 ->
            {ok, ResponseBody} = hackney:body(ClientRef),
            Resp = decode_response(RespHeaders, ResponseBody),
            {ok, Resp, #{status => Status,
                         headers => RespHeaders}};
        {ok, Status, RespHeaders, ClientRef} when Status >= 300 ->
            {ok, ResponseBody} = hackney:body(ClientRef),
            Resp = decode_response(RespHeaders, ResponseBody),
            {error, Resp, #{status => Status,
                            headers => RespHeaders}}
    end.

prepare_path(Path) ->
    lists:map(fun convert/1, Path).

convert(PathPart) when is_integer(PathPart) ->
    integer_to_binary(PathPart);
convert(PathPart) when is_list(PathPart) or is_binary(PathPart) ->
    PathPart.

decode_response(Headers, Body) ->
    case lists:keyfind(<<"Content-Type">>, 1, Headers) of
        {_, <<"application/json", _/binary>>} ->
            jsx:decode(Body, [return_maps, {labels, atom}]);
        %% TODO: yml, protobuf, user defined function
        _ ->
            Body
    end.

optional_params([], _Params) -> [];
optional_params(Keys, Params) ->
    [{Key, maps:get(Key, Params)} || Key <- Keys, maps:is_key(Key, Params)].

select_header_content_type([]) ->
    [];
select_header_content_type(ContentTypes) ->
    case lists:member(<<"application/json">>, ContentTypes) orelse lists:member(<<"*/*">>, ContentTypes) of
        true ->
            [{<<"Content-Type">>, <<"application/json">>}];
        false ->
            [{<<"Content-Type">>, hd(ContentTypes)}]
    end.

auth_with_prefix(Cfg, Key, Token) ->
    Prefixes = maps:get(api_key_prefix, Cfg, #{}),
    case maps:get(Key, Prefixes, undefined) of
        undefined ->
            Token;
        Prefix ->
            <<Prefix/binary, " ", Token/binary>>
    end.

update_params_with_auth(Cfg, Headers, QS) ->
    AuthSettings = maps:get(auth, Cfg, #{}),
    Auths = #{ 'apiKey' =>
                #{type => 'apiKey',
                  key => <<"api-key">>,
                  in => query}, 'headerApiKey' =>
                #{type => 'apiKey',
                  key => <<"x-api-key">>,
                  in => header}},

    maps:fold(fun(AuthName, #{type := _Type,
                              in := In,
                              key := Key}, {HeadersAcc, QSAcc}) ->
                      case maps:get(AuthName, AuthSettings, undefined) of
                          undefined ->
                              {HeadersAcc, QSAcc};
                          Value ->
                              case In of
                                  header ->
                                      {[{Key, auth_with_prefix(Cfg, Key, Value)} | HeadersAcc], QSAcc};
                                  query ->
                                      {HeadersAcc, [{Key, auth_with_prefix(Cfg, Key, Value)} | QSAcc]}
                              end
                      end
              end, {Headers, QS}, Auths).
