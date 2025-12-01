-module(gamebrain_game_news_response).

-export([encode/1]).

-export_type([gamebrain_game_news_response/0]).

-type gamebrain_game_news_response() ::
    #{ 'news' := list()
     }.

encode(#{ 'news' := News
        }) ->
    #{ 'news' => News
     }.
