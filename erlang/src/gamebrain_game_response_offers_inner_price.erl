-module(gamebrain_game_response_offers_inner_price).

-export([encode/1]).

-export_type([gamebrain_game_response_offers_inner_price/0]).

-type gamebrain_game_response_offers_inner_price() ::
    #{ 'currency' => binary(),
       'discount_percent' => integer(),
       'value' => integer(),
       'initial' => integer()
     }.

encode(#{ 'currency' := Currency,
          'discount_percent' := DiscountPercent,
          'value' := Value,
          'initial' := Initial
        }) ->
    #{ 'currency' => Currency,
       'discount_percent' => DiscountPercent,
       'value' => Value,
       'initial' => Initial
     }.
