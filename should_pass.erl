-module(should_pass).

-export([g/1]).

-spec g(list(tag)) -> list(string());
       (tag) -> string().
g([]) -> [];
g([tag | _]) -> [g(tag)];
g(tag) -> "".
