scoreboard players operation @s res_timer += one res_values

# tp HereticLemur @s
execute if score @s res_timer = stage1_threshold res_timer run function hc_res:anim/stage1
execute if score @s res_timer = stage2_threshold res_timer run function hc_res:anim/stage2
execute if score @s res_timer = stage3_threshold res_timer run function hc_res:anim/stage3
execute if score @s res_timer = stage4_threshold res_timer run function hc_res:anim/stage4
execute if score @s res_timer = stage5_threshold res_timer run kill @e[tag=cl,limit=1,sort=nearest]
execute if score @s res_timer = stage6_threshold res_timer run kill @e[tag=cm,limit=1,sort=nearest]
execute if score @s res_timer = stage7_threshold res_timer run kill @e[tag=cc,limit=1,sort=nearest]
execute if score @s res_timer = stage7_threshold res_timer run kill @e[tag=anim_root,limit=1,sort=nearest]


execute as @e[tag=cc,limit=1,sort=nearest] at @s run function hc_res:rings/inner2
execute as @e[tag=cm,limit=1,sort=nearest] at @s run function hc_res:rings/middle2
execute as @e[tag=cl,limit=1,sort=nearest] at @s run function hc_res:rings/outer

# execute as @e[tag=cc,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~1 ~
# execute as @e[tag=cm,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-0.8 ~
# execute as @e[tag=cl,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~0.5 ~
particle minecraft:enchant ~ ~ ~ .1 .1 .1 2 10