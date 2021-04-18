# Recursively give diamond and decrease score until 0
give @s diamond
scoreboard players operation @s res_cost -= one res_cost
execute if score @s res_cost > zero constants run function hc_res:return_cost
