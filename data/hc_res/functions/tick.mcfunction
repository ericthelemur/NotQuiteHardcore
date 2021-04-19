scoreboard players enable @a resurrect 
execute as @a[scores={resurrect=1..}] at @s run function hc_res:resurrect
execute as @a[scores={resurrect=..-1}] at @s run function hc_res:resurrect

execute as @e[tag=anim_root] at @s run function hc_res:anim/anim