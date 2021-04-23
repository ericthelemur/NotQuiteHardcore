scoreboard players enable @a resurrect 
# Trigger initiating function
execute as @a[scores={resurrect=1..}] at @s run function nqh:res_trigger
execute as @a[scores={resurrect=..-1}] at @s run function nqh:res_trigger

# Call anim
execute if score no_anim nqh_values = zero constants as @e[tag=nqh_anim_root] at @s run function nqh:anim/anim