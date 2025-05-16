-module(gamebrain_search_response_sorting_options_inner).

-export([encode/1]).

-export_type([gamebrain_search_response_sorting_options_inner/0]).

-type gamebrain_search_response_sorting_options_inner() ::
    #{ 'name' => binary(),
       'sort' => binary(),
       'key' => binary()
     }.

encode(#{ 'name' := Name,
          'sort' := Sort,
          'key' := Key
        }) ->
    #{ 'name' => Name,
       'sort' => Sort,
       'key' => Key
     }.
