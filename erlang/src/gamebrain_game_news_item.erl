-module(gamebrain_game_news_item).

-export([encode/1]).

-export_type([gamebrain_game_news_item/0]).

-type gamebrain_game_news_item() ::
    #{ 'title' := binary(),
       'url' := gamebrain_u_ri:gamebrain_u_ri(),
       'source' := binary(),
       'image' => gamebrain_u_ri:gamebrain_u_ri(),
       'published' := calendar:date()
     }.

encode(#{ 'title' := Title,
          'url' := Url,
          'source' := Source,
          'image' := Image,
          'published' := Published
        }) ->
    #{ 'title' => Title,
       'url' => Url,
       'source' => Source,
       'image' => Image,
       'published' => Published
     }.
