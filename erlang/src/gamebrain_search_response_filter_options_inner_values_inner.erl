-module(gamebrain_search_response_filter_options_inner_values_inner).

-export([encode/1]).

-export_type([gamebrain_search_response_filter_options_inner_values_inner/0]).

-type gamebrain_search_response_filter_options_inner_values_inner() ::
    #{ 'name' => binary(),
       'key' => binary(),
       'count' => integer()
     }.

encode(#{ 'name' := Name,
          'key' := Key,
          'count' := Count
        }) ->
    #{ 'name' => Name,
       'key' => Key,
       'count' => Count
     }.
