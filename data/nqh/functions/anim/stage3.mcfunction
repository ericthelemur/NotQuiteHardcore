summon minecraft:armor_stand ~ ~ ~ {Tags:["nqh_inner"],Invisible:1,NoGravity:1}
playsound minecraft:particle.soul_escape master @a ~ ~ ~ 1
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.1 2

scoreboard players set @s nqh_timer 0
scoreboard players operation @s nqh_stage += one constants