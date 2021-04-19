# particle minecraft:totem_of_undying ~ ~ ~ 0.2 1 0.2 1 300
# playsound minecraft:item.totem.use player @a ~ ~ ~ 0.7

particle cloud ~ ~ ~ 0 0 0 0.5 100 force
particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.75 500 force
playsound minecraft:item.totem.use player @a ~ ~ ~ 1

tp @a[tag=res_reviving] @s
execute as @a[tag=res_reviving] at @s run function hc_res:res