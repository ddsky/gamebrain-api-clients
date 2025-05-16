-module(gamebrain_game_response_offers_inner).

-export([encode/1]).

-export_type([gamebrain_game_response_offers_inner/0]).

-type gamebrain_game_response_offers_inner() ::
    #{ 'price' => gamebrain_game_response_offers_inner_price:gamebrain_game_response_offers_inner_price(),
       'store_name' => binary(),
       'platform' => binary(),
       'title' => binary(),
       'url' => gamebrain_u_ri:gamebrain_u_ri()
     }.

encode(#{ 'price' := Price,
          'store_name' := StoreName,
          'platform' := Platform,
          'title' := Title,
          'url' := Url
        }) ->
    #{ 'price' => Price,
       'store_name' => StoreName,
       'platform' => Platform,
       'title' => Title,
       'url' => Url
     }.
