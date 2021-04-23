# Resurrect
tp @a[tag=nqh_reviving] @s
execute as @a[tag=nqh_reviving] at @s run function nqh:res

scoreboard players set @s nqh_timer 0
scoreboard players operation @s nqh_stage += one constants

playsound minecraft:ambient.basalt_deltas.mood master @a ~ ~ ~ 1