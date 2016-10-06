%%%-------------------------------------------------------------------
%%% @author raphael
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. oct. 2016 20:41
%%%-------------------------------------------------------------------
-module(cities).
-author("raphael").

%% API
-export([new/0, declare/3, linked_to/2]).

new() ->
  [].

declare(Cities, City, LinkedTo) ->
  [{City, LinkedTo} | Cities].

linked_to([], _City) -> [];
linked_to([{City, LinkedTo} | _Tail], City) -> LinkedTo;
linked_to([_ | Tail], City) -> linked_to(Tail, City).