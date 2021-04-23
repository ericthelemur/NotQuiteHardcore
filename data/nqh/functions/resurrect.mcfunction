# Resurrection payment + start

tellraw @a [{"text":"Attempting ressurection...","bold": true, "color": "dark_red"}]

# Get diamond count, cannot use scoreboard value as max unfortunately
execute store result score @s nqh_cost run clear @s minecraft:diamond

# Not enough diamonds
execute if score @s nqh_cost < cost nqh_values run tellraw @a [{"text":"Not enough payment (","bold": true, "color": "dark_red"},{"score":{"name":"@s","objective":"nqh_cost"},"bold": true, "color": "dark_red"},{"text":"/","bold": true, "color": "dark_red"},{"score":{"name":"cost","objective":"nqh_values"},"bold": true, "color": "dark_red"},{"text":" diamonds). ","bold": true, "color": "dark_red"},{"selector":"@a[gamemode=spectator,limit=1,sort=nearest]","bold": true, "color": "dark_red"},{"text":" remains dead.","bold": true, "color": "dark_red"}]


# If player has cost, start ressurection anim 
execute if score @s nqh_cost >= cost nqh_values run function nqh:res_success


# Return (extra) diamonds
execute if score @s nqh_cost > zero constants run function nqh:return_cost


execute if entity @a[tag=nqh_reviving] run tellraw @a [{"text":"Reviving ","bold": true, "color": "dark_red"},{"selector":"@a[tag=nqh_reviving]","bold": true, "color": "dark_red"}]
execute if entity @a[tag=nqh_reviving] run scoreboard players operation cost nqh_values *= mult nqh_values

