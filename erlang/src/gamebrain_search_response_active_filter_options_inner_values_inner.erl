-module(gamebrain_search_response_active_filter_options_inner_values_inner).

-export([encode/1]).

-export_type([gamebrain_search_response_active_filter_options_inner_values_inner/0]).

-type gamebrain_search_response_active_filter_options_inner_values_inner() ::
    #{ 'match' => binary(),
       'value' => binary()
     }.

encode(#{ 'match' := Match,
          'value' := Value
        }) ->
    #{ 'match' => Match,
       'value' => Value
     }.
