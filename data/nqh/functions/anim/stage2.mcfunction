summon minecraft:armor_stand ~ ~ ~ {Tags:["nqh_middle"],Invisible:1,NoGravity:1}
playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1

scoreboard players set @s nqh_timer 0
scoreboard players operation @s nqh_stage += one constants