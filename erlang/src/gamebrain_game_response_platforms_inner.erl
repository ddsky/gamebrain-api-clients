-module(gamebrain_game_response_platforms_inner).

-export([encode/1]).

-export_type([gamebrain_game_response_platforms_inner/0]).

-type gamebrain_game_response_platforms_inner() ::
    #{ 'value' => binary(),
       'name' => binary()
     }.

encode(#{ 'value' := Value,
          'name' := Name
        }) ->
    #{ 'value' => Value,
       'name' => Name
     }.
