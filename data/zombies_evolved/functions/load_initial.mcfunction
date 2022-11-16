## AUTHOR: Picarrow

# Sets the default settings configuration
function zombies_evolved:settings/set_defaults

# These objectives track scores related to zombie variants
scoreboard objectives add zev.jacky.lit_time dummy
scoreboard objectives add zev.shrieker.shriek_time dummy
scoreboard objectives add zev.shrieker.warning dummy
scoreboard objectives add zev.stalac.phase_time dummy

scoreboard players set #loaded zev._ 1
