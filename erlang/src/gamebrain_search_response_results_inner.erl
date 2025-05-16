-module(gamebrain_search_response_results_inner).

-export([encode/1]).

-export_type([gamebrain_search_response_results_inner/0]).

-type gamebrain_search_response_results_inner() ::
    #{ 'id' => integer(),
       'year' => integer(),
       'name' => binary(),
       'genre' => binary(),
       'image' => gamebrain_u_ri:gamebrain_u_ri(),
       'link' => binary(),
       'rating' => gamebrain_search_response_results_inner_rating:gamebrain_search_response_results_inner_rating(),
       'adult_only' => boolean(),
       'screenshots' => list(),
       'micro_trailer' => gamebrain_u_ri:gamebrain_u_ri(),
       'gameplay' => gamebrain_u_ri:gamebrain_u_ri(),
       'short_description' => binary()
     }.

encode(#{ 'id' := Id,
          'year' := Year,
          'name' := Name,
          'genre' := Genre,
          'image' := Image,
          'link' := Link,
          'rating' := Rating,
          'adult_only' := AdultOnly,
          'screenshots' := Screenshots,
          'micro_trailer' := MicroTrailer,
          'gameplay' := Gameplay,
          'short_description' := ShortDescription
        }) ->
    #{ 'id' => Id,
       'year' => Year,
       'name' => Name,
       'genre' => Genre,
       'image' => Image,
       'link' => Link,
       'rating' => Rating,
       'adult_only' => AdultOnly,
       'screenshots' => Screenshots,
       'micro_trailer' => MicroTrailer,
       'gameplay' => Gameplay,
       'short_description' => ShortDescription
     }.
