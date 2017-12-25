-module(ektp_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
	Dispatch = cowboy_router:compile([
        {'_', [
					{"/", frontend_handler, []},
					{"/person", person_handler, []},
					{"/about", cowboy_static, {priv_file, ektp, "static/index.html"}},
					{"/assets/[...]", cowboy_static, {priv_dir, ektp, "assets",
                [{mimetypes, cow_mimetypes, all}]}}

				]}
    ]),
    {ok, _} = cowboy:start_clear(my_http_listener,
        [{port, 8080}],
        #{env => #{dispatch => Dispatch}}
    ),
	ektp_sup:start_link().

stop(_State) ->
	ok.
