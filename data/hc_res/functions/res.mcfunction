
particle cloud ~ ~ ~ 0 0 0 0.5 100 force
particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.75 500 force
playsound minecraft:item.totem.use player @a ~ ~ ~ 1

gamemode survival @s
tag @s remove res_reviving

tellraw @a [{"text":"Resurrection now costs ","bold": true, "color": "dark_red"},{"score":{"name":"cost","objective":"res_values"},"bold": true, "color": "dark_red"},{"text":" diamonds.","bold": true, "color": "dark_red"}]
