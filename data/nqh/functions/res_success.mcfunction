# Starts res or animation, after payment successful

# If player has cost, tag nearest dead (spectating) player for revival 
tag @a[gamemode=spectator,limit=1,sort=nearest] add nqh_reviving


# start anim
execute if score no_anim nqh_values = zero constants if entity @a[tag=nqh_reviving] run function nqh:anim/init
execute unless score no_anim nqh_values = zero constants run function nqh:res


# Take the cost from their score
scoreboard players operation @s nqh_cost -= cost nqh_values