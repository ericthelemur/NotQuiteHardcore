# Recursively give diamond and decrease score until 0
give @s diamond
scoreboard players operation @s nqh_cost -= one constants
execute if score @s nqh_cost > zero constants run function nqh:return_cost
