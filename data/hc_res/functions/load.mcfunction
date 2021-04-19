scoreboard objectives add resurrect trigger
scoreboard objectives add res_cost dummy
scoreboard objectives add res_values dummy
scoreboard objectives add res_timer dummy

scoreboard players set zero res_values 0
scoreboard players set one res_values 1
scoreboard players set minone res_values -1

scoreboard players set initial res_values 2
scoreboard players set mult res_values 2

scoreboard players operation cost res_values += zero res_values
execute if score cost res_values = zero res_values run scoreboard players operation cost res_values += initial res_values


scoreboard players set stage1_threshold res_timer 0
scoreboard players set stage2_threshold res_timer 16
scoreboard players set stage3_threshold res_timer 32
scoreboard players set stage4_threshold res_timer 64

scoreboard players set stage5_threshold res_timer 96
scoreboard players set stage6_threshold res_timer 128
scoreboard players set stage7_threshold res_timer 144



