## AUTHOR: Picarrow

# This objective tracks system flags, temporary variables, and constants
scoreboard objectives add zev._ dummy
execute unless score $loaded zev._ = $loaded zev._ run function zombies_evolved:set_config_defaults
scoreboard players set $loaded zev._ 1

# These objectives track states of special zombies
scoreboard objectives add zev.jacky.lit_time dummy
scoreboard objectives add zev.shrieker.shriek_time dummy
scoreboard objectives add zev.shrieker.warning dummy
scoreboard objectives add zev.stalac.phase_time dummy
