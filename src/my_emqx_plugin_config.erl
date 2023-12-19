-module(my_emqx_plugin_config).

-define(CONFIG_PATH, code:priv_dir(my_emqx_plugin) ++ "/config.hocon").

-define(MAP_CONFIG, get_map_config()).

-export([get_map_config/0, get_config_by_key/1]).

get_map_config() ->
    {ok, MapConfig} = hocon:load(?CONFIG_PATH),
    MapConfig.

get_config_by_key(Key) ->
    maps:get(Key, ?MAP_CONFIG).