name = "再也没有猴子了"
description = "在烦人的猴子攻击你、偷你东西甚至只是捡起物品的的时候直接把这该死的猴子弄死，并且不产生诅咒饰品；已经获得的诅咒饰品可以作为燃料使用"
author = "Chuigda WhiteGive"
version = "0.1"
forumthred = ""
icon_atlas = "modicon.xml"
icon = "modicon.tex"

dst_compatible = true
dont_starve_compatible = false
client_only_mod = false
all_clients_require_mod = false
api_version = 10

server_filter_tags = {}
configuration_options = {
    {
        name = "kill_on_steal",
        label = "偷东西时杀死",
        hover = "当猴子偷东西时杀死猴子",
        options = {
			{description = "开启", data = true, hover = "开启"},
			{description = "关闭", data = false, hover = "关闭"},
		},
		default = true
    },
    {
        name = "kill_on_pickup",
        label = "捡起物品时杀死",
        hover = "当猴子捡起物品时杀死猴子",
        options = {
            {description = "开启", data = true, hover = "开启"},
            {description = "关闭", data = false, hover = "关闭"},
        },
        default = true
    },
    {
        name = "kill_on_attack",
        label = "攻击时杀死",
        hover = "当猴子攻击时杀死猴子",
        options = {
            {description = "开启", data = true, hover = "开启"},
            {description = "关闭", data = false, hover = "关闭"},
        },
        default = true
    }
}
