# Create anim root armour stand
summon minecraft:armor_stand ~ ~ ~ {Tags:["nqh_anim_root"],Invisible:1,NoGravity:1}
scoreboard players set @e[distance=..1,limit=1,sort=nearest,tag=nqh_anim_root] nqh_timer 0
scoreboard players set @e[distance=..1,limit=1,sort=nearest,tag=nqh_anim_root] nqh_stage -1

