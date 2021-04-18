scoreboard players enable @a resurrect 
execute as @a[scores={resurrect=1..}] run function hc_res:resurrect
execute as @a[scores={resurrect=..-1}] run function hc_res:resurrect

