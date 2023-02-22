## AUTHOR: Picarrow

# Sets the default settings configuration
function zombies_evolved:settings/set_defaults

# These objectives track scores relating to zombie variants
scoreboard objectives add zev.jacky.lit_time dummy
scoreboard objectives add zev.shrieker.shriek_time dummy
scoreboard objectives add zev.shrieker.warning dummy
scoreboard objectives add zev.stalac.phase_time dummy

# This objective tracks scores relating to crumble helpers
scoreboard objectives add zev.crumble_helper.age dummy

# This objective tracks scores relating to arrows
scoreboard objectives add zev.arrow.bow_id dummy

# Signifies the data pack is loaded so that it isn't initialized again
scoreboard players set #loaded zev._ 1
