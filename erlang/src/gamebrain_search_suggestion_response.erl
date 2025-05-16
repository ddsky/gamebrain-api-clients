-module(gamebrain_search_suggestion_response).

-export([encode/1]).

-export_type([gamebrain_search_suggestion_response/0]).

-type gamebrain_search_suggestion_response() ::
    #{ 'results' => list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
