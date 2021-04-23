# Root function

# Error cases
execute if entity @e[tag=anim_root] run tellraw @a [{"text":"Wait for the currently ongoing ritual to end!","bold": true, "color": "dark_red"}]
execute unless entity @a[gamemode=spectator,tag=!nqh_reviving] run tellraw @a [{"text":"No players to revive!","bold": true, "color": "dark_red"}]
# Call res function
execute if entity @a[gamemode=spectator,tag=!nqh_reviving] unless entity @e[tag=anim_root] run function nqh:resurrect
scoreboard players reset @s resurrect