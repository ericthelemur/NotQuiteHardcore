kill @e[tag=nqh_outer,limit=1,sort=nearest]

scoreboard players set @s nqh_timer 0
scoreboard players operation @s nqh_stage += one constants

playsound minecraft:ambient.basalt_deltas.mood master @a ~ ~ ~ 1