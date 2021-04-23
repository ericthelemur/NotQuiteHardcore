summon minecraft:armor_stand ~ ~ ~ {Tags:["nqh_outer"],Invisible:1,NoGravity:1}
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.2 0.5

scoreboard players set @s nqh_timer 0
scoreboard players operation @s nqh_stage += one constants