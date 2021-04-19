summon minecraft:armor_stand ~ ~ ~ {Tags:["anim_root"], Invisible:1,NoGravity:1}
scoreboard players set @e[distance=..1,limit=1,sort=nearest,tag=anim_root] res_timer -1


