## AUTHOR : Picarrow

# This objective tracks the settings, along with variables and constants
scoreboard objectives add zev._ dummy

# These objectives track scores relating to various entities
scoreboard objectives add zev.arrow.bow_id dummy
scoreboard objectives add zev.crumble_guider.age dummy
scoreboard objectives add zev.jacky.lit_time dummy
scoreboard objectives add zev.shrieker.shriek_time dummy
scoreboard objectives add zev.shrieker.warning dummy
scoreboard objectives add zev.stalac.phase_time dummy

# Sets the default settings configuration
function zombies_evolved:settings/set_defaults

# Signifies the data pack has been initialized
data modify storage zombies_evolved:data root.loaded set value 1b
