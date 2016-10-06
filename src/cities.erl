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

%%declare(Cities, City, LinkedTo) ->
%%  add(Cities, City, LinkedTo).
%%
%%add()

declare(Cities, _City, []) ->
  Cities;
declare(Cities, City, [Head | Tail]) ->
  [{City, Head} | declare(Cities, City, Tail)].

%%declare(Cities, City, MyList, Acc) ->


%%declare(Cities, City, LinkedTo) ->
%%  [{City, LinkedTo} | Cities].

linked_to([], _City) -> [];
linked_to([{City, LinkedTo} | Tail], City) ->
  [LinkedTo | linked_to(Tail, City)];
linked_to([{LinkedTo, City} | Tail], City) ->
  [LinkedTo | linked_to(Tail, City)];
linked_to([{_Other1, _Other2} | Tail], City) ->
  linked_to(Tail, City).

%%linked_to()