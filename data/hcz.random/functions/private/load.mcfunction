### AUTHOR: Aeldrion
### ADAPTED BY: Picarrow

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
scoreboard objectives add hcz.random dummy
execute unless score #lcg hcz.random = #lcg hcz.random store result score #lcg hcz.random run seed

# Define constants
scoreboard players set #8 hcz.random 8
scoreboard players set #lcg_a hcz.random 1630111353
scoreboard players set #lcg_c hcz.random 1623164762
scoreboard players set #lcg_m hcz.random 2147483647
