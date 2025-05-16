-module(gamebrain_search_response_sorting).

-export([encode/1]).

-export_type([gamebrain_search_response_sorting/0]).

-type gamebrain_search_response_sorting() ::
    #{ 'key' => binary(),
       'direction' => binary()
     }.

encode(#{ 'key' := Key,
          'direction' := Direction
        }) ->
    #{ 'key' => Key,
       'direction' => Direction
     }.
