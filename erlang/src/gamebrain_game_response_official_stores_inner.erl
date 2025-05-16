-module(gamebrain_game_response_official_stores_inner).

-export([encode/1]).

-export_type([gamebrain_game_response_official_stores_inner/0]).

-type gamebrain_game_response_official_stores_inner() ::
    #{ 'source' => binary(),
       'url' => gamebrain_u_ri:gamebrain_u_ri()
     }.

encode(#{ 'source' := Source,
          'url' := Url
        }) ->
    #{ 'source' => Source,
       'url' => Url
     }.
