-module(person_handler).
-behavior(cowboy_rest).

-export([init/2]).
-export([content_types_provided/2]).
-export([to_html/2, to_json/2]).

init(Req, State) ->
	{cowboy_rest, Req, State}.

content_types_provided(Req, State) ->
	{[
		{<<"text/html">> to_html},
		{<<"application/json">>, to_json}
	], Req, State}.

to_html(Req, State) ->
	{<<"<html><body>You're not supposed to be here! </body></html>">>, Req, State}.

to_json(Req, State) ->
	{<<"{\"msg\": \"hello World\"}">>, Req, State}.
