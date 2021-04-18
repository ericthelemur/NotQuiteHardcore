execute unless entity @a[gamemode=spectator] run tellraw @a [{"text":"No players to revive!","bold": true, "color": "dark_red"}]
execute if entity @a[gamemode=spectator] run function hc_res:res_pay
scoreboard players reset @s resurrect