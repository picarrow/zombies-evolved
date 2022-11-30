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
scoreboard objectives add rdm._ dummy
execute unless score #lcg rdm._ = #lcg rdm._ store result score #lcg rdm._ run seed

# Define constants
scoreboard players set #8 rdm._ 8
scoreboard players set #lcg_a rdm._ 1630111353
scoreboard players set #lcg_c rdm._ 1623164762
scoreboard players set #lcg_m rdm._ 2147483647
