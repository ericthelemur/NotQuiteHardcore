scoreboard players operation @s nqh_timer += one constants

# Play sfx and delay start
execute as @s[scores={nqh_stage=-1}] run function nqh:anim/stage0
# Create outer ring
execute as @s[scores={nqh_stage=0}] if score @s nqh_timer >= stage1_duration nqh_values run function nqh:anim/stage1
# Create middle ring
execute as @s[scores={nqh_stage=1}] if score @s nqh_timer >= stage1_duration nqh_values run function nqh:anim/stage2
# Create inner ring
execute as @s[scores={nqh_stage=2}] if score @s nqh_timer >= stage2_duration nqh_values run function nqh:anim/stage3
# Resurrection
execute as @s[scores={nqh_stage=3}] if score @s nqh_timer >= stage3_duration nqh_values run function nqh:anim/stage4
# Remove outer ring
execute as @s[scores={nqh_stage=4}] if score @s nqh_timer >= stage4_duration nqh_values run function nqh:anim/stage5
# Remove middle ring
execute as @s[scores={nqh_stage=5}] if score @s nqh_timer >= stage5_duration nqh_values run function nqh:anim/stage6
# Remove inner ring
execute as @s[scores={nqh_stage=6}] if score @s nqh_timer >= stage6_duration nqh_values run function nqh:anim/stage7

# Draw rings
execute as @e[tag=nqh_inner,limit=1,sort=nearest] at @s run function nqh:anim/rings/inner2
execute as @e[tag=nqh_middle,limit=1,sort=nearest] at @s run function nqh:anim/rings/middle2
execute as @e[tag=nqh_outer,limit=1,sort=nearest] at @s run function nqh:anim/rings/outer

# Enchant particles
execute if entity @s[scores={nqh_stage=..3}] run particle minecraft:enchant ~ ~1 ~ .1 .1 .1 2 10

# Delayed sfx before ring remove
execute if entity @s[scores={nqh_stage=4,nqh_timer=48}] run playsound minecraft:ambient.basalt_deltas.mood master @a ~ ~ ~ 0.5