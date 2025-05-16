-module(gamebrain_game_response_playtime).

-export([encode/1]).

-export_type([gamebrain_game_response_playtime/0]).

-type gamebrain_game_response_playtime() ::
    #{ 'percentiles' => list(),
       'min' => integer(),
       'median' => integer(),
       'max' => integer(),
       'mean' => integer(),
       'mentions' => integer()
     }.

encode(#{ 'percentiles' := Percentiles,
          'min' := Min,
          'median' := Median,
          'max' := Max,
          'mean' := Mean,
          'mentions' := Mentions
        }) ->
    #{ 'percentiles' => Percentiles,
       'min' => Min,
       'median' => Median,
       'max' => Max,
       'mean' => Mean,
       'mentions' => Mentions
     }.
