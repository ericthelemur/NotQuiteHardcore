# Trigger to activate resurrect
scoreboard objectives add resurrect trigger

# Scoreboards
scoreboard objectives add nqh_cost dummy
scoreboard objectives add nqh_values dummy
scoreboard objectives add nqh_timer dummy
scoreboard objectives add nqh_stage dummy

# Constants
scoreboard objectives add constants dummy
scoreboard players set zero constants 0
scoreboard players set one constants 1
scoreboard players set minone constants -1

# Settings
scoreboard players set initial nqh_values 2
scoreboard players set mult nqh_values 2
scoreboard players set no_anim nqh_values 0

# Sets cost if not exists (should never be 0), adding 0 creates the value if it doesn't already exist
scoreboard players operation cost nqh_values += zero constants
execute if score cost nqh_values = zero constants run scoreboard players operation cost nqh_values += initial nqh_values


# Anim thresholds
scoreboard players set stage0_duration nqh_values 4
scoreboard players set stage1_duration nqh_values 16
scoreboard players set stage2_duration nqh_values 16
scoreboard players set stage3_duration nqh_values 32
scoreboard players set stage4_duration nqh_values 128
scoreboard players set stage5_duration nqh_values 32
scoreboard players set stage6_duration nqh_values 32




