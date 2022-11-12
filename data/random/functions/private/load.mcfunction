## AUTHOR: Aeldrion

#> random:private/load
#
# Sets up the scoreboard for RNG
#
# @private
# @handles #minecraft:load

# Definitions for Data-pack Helper Plus
#define storage random:input
#define storage random:output
#define storage random:data

# Create scoreboard objective and initialise LCG
scoreboard objectives add rdm.random dummy
execute unless score #lcg rdm.random = #lcg rdm.random store result score #lcg rdm.random run seed

# Define constants
scoreboard players set #8 rdm.random 8
scoreboard players set #lcg_a rdm.random 1630111353
scoreboard players set #lcg_c rdm.random 1623164762
scoreboard players set #lcg_m rdm.random 2147483647
