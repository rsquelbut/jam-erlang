%%%-------------------------------------------------------------------
%%% @author raphael
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. oct. 2016 20:28
%%%-------------------------------------------------------------------
-module(cities_tests).
-author("raphael").

-include_lib("eunit/include/eunit.hrl").

simple_test() ->
  ?assert(true).

should_declare_a_city_and_its_links__test() ->
  Cities0 = cities:new(),
  Cities1 = cities:declare(Cities0, paris, [london, madrid, algiers, essen, milan]),

  ?assertEqual([london, madrid, algiers, essen, milan],
    cities:linked_to(Cities1, paris)).
