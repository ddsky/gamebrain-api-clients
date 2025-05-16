-module(gamebrain_search_response).

-export([encode/1]).

-export_type([gamebrain_search_response/0]).

-type gamebrain_search_response() ::
    #{ 'sorting' => gamebrain_search_response_sorting:gamebrain_search_response_sorting(),
       'active_filter_options' => list(),
       'query' => binary(),
       'total_results' => integer(),
       'limit' => integer(),
       'offset' => integer(),
       'results' => list(),
       'filter_options' => list(),
       'sorting_options' => list()
     }.

encode(#{ 'sorting' := Sorting,
          'active_filter_options' := ActiveFilterOptions,
          'query' := Query,
          'total_results' := TotalResults,
          'limit' := Limit,
          'offset' := Offset,
          'results' := Results,
          'filter_options' := FilterOptions,
          'sorting_options' := SortingOptions
        }) ->
    #{ 'sorting' => Sorting,
       'active_filter_options' => ActiveFilterOptions,
       'query' => Query,
       'total_results' => TotalResults,
       'limit' => Limit,
       'offset' => Offset,
       'results' => Results,
       'filter_options' => FilterOptions,
       'sorting_options' => SortingOptions
     }.
