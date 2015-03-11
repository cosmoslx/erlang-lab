-module(mod_hello_world).

-behaviour(gen_mod).

-include("logger.hrl").

-export([start/2, stop/1]).

start(_Host, _Opts) ->
    ?INFO_MSG("Hello, ejabberd world!", []),
    ok.

stop(_Host) ->
    ?INFO_MSG("Byebye, ejabberd world!", []),
    ok.
