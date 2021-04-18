scoreboard objectives add resurrect trigger
scoreboard objectives add res_cost dummy

scoreboard players set zero res_cost 0
scoreboard players set one res_cost 1

scoreboard players set initial res_cost 2
scoreboard players set mult res_cost 2

scoreboard players operation cost res_cost += zero res_cost
execute if score cost res_cost = zero res_cost run scoreboard players operation cost res_cost += initial res_cost



