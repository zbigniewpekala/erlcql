-module(erlcql_opts).

-include("erlcql.hrl").

-export([pre_prepared_ets/0]).

-define(PRE_PREPARED_ETS_NAME, erlcql_prepared).
-define(PRE_PREPARED_ETS_OPTS, [set, public, {read_concurrency, true}]).

pre_prepared_ets() ->
    Tid = ets:new(?PRE_PREPARED_ETS_NAME, ?PRE_PREPARED_ETS_OPTS),
    {?OPTION_PRE_PREPARED_ETS, Tid}.
