scoreboard objectives add resurrect trigger
scoreboard objectives add res_cost dummy
scoreboard objectives add res_values dummy

scoreboard players set zero res_values 0
scoreboard players set one res_values 1

scoreboard players set initial res_values 2
scoreboard players set mult res_values 2

scoreboard players operation cost res_values += zero res_values
execute if score cost res_values = zero res_values run scoreboard players operation cost res_values += initial res_values



