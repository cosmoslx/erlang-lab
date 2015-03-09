-module(tr_app).
-behaviour(application).

%%% =====================
%%% Application callbacks
%%% =====================

-export([
         start/2,
         stop/1
        ]).

%%% ================================
%%% Application callback implemenets
%%% ================================

start(_Type, _StartArgs) ->
    case tr_sup:start_link() of
        {ok, Pid} -> 
            {ok, Pid};
        Other ->
            {error, Other}
    end.

stop(_State) ->
    ok.
