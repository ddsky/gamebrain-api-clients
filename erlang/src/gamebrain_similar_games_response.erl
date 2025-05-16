-module(gamebrain_similar_games_response).

-export([encode/1]).

-export_type([gamebrain_similar_games_response/0]).

-type gamebrain_similar_games_response() ::
    #{ 'results' => list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
