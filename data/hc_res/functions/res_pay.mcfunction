tellraw @a [{"text":"Attempting ressurection...","bold": true, "color": "dark_red"}]

# Get diamond count, cannot use scoreboard value as max unfortunately
execute store result score @s res_cost run clear @s minecraft:diamond

# Not enough diamonds
execute if score @s res_cost < cost res_values run tellraw @a [{"text":"Not enough payment (","bold": true, "color": "dark_red"},{"score":{"name":"@s","objective":"res_cost"},"bold": true, "color": "dark_red"},{"text":"/","bold": true, "color": "dark_red"},{"score":{"name":"cost","objective":"res_values"},"bold": true, "color": "dark_red"},{"text":" diamonds). ","bold": true, "color": "dark_red"},{"selector":"@a[gamemode=spectator,limit=1,sort=nearest]","bold": true, "color": "dark_red"},{"text":" remains dead.","bold": true, "color": "dark_red"}]


# If player has cost, tag nearest dead (spectating) player for revival 
execute if score @s res_cost >= cost res_values run tag @a[gamemode=spectator,limit=1,sort=nearest] add res_reviving
# Take the cost from their score
execute if score @s res_cost >= cost res_values run scoreboard players operation @s res_cost -= cost res_values


# Return diamonds (for both branches)
execute if score @s res_cost > zero res_values run function hc_res:return_cost

# Revive the dead player
execute if entity @a[tag=res_reviving] run tp @a[tag=res_reviving] @s
execute if entity @a[tag=res_reviving] as @a[tag=res_reviving] run function hc_res:res
