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

declare(Cities, _City, []) ->
  Cities;
declare(Cities, City, [Head | Tail]) ->
  CitiesWithAdd = [{City, Head} | Cities],
  declare(CitiesWithAdd, City, Tail).

linked_to(Cities, City) ->
  linked_to(Cities, City, []).
linked_to([], _, Acc) -> Acc;
linked_to([{City, Link} | Tail], City, Acc) ->
  linked_to(Tail, City, [Link | Acc]);
linked_to([{Link, City} | Tail], City, Acc) ->
  linked_to(Tail, City, [Link | Acc]);
linked_to([{_Other1, _Other2} | Tail], City, Acc) ->
  linked_to(Tail, City, Acc).

%%linked_to()