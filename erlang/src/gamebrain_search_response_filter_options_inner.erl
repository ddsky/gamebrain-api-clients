-module(gamebrain_search_response_filter_options_inner).

-export([encode/1]).

-export_type([gamebrain_search_response_filter_options_inner/0]).

-type gamebrain_search_response_filter_options_inner() ::
    #{ 'name' => binary(),
       'key' => binary(),
       'values' => list()
     }.

encode(#{ 'name' := Name,
          'key' := Key,
          'values' := Values
        }) ->
    #{ 'name' => Name,
       'key' => Key,
       'values' => Values
     }.
