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
scoreboard objectives add aeldrion.rdm.random dummy
execute unless score #lcg aeldrion.rdm.random = #lcg aeldrion.rdm.random store result score #lcg aeldrion.rdm.random run seed

# Define constants
scoreboard players set #8 aeldrion.rdm.random 8
scoreboard players set #lcg_a aeldrion.rdm.random 1630111353
scoreboard players set #lcg_c aeldrion.rdm.random 1623164762
scoreboard players set #lcg_m aeldrion.rdm.random 2147483647
