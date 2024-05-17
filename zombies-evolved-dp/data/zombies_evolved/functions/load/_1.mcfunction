## AUTHOR : Picarrow

# Track variables and constants
scoreboard objectives add zev._ dummy

# Initialize variables
scoreboard players set #advancement.tab.main.darwinism.criteria_check_loop zev._ 0

# Set the default settings configuration
function zombies_evolved:_settings/set_defaults/_

# Track variables relating to entities
scoreboard objectives add zev.advancement.tab.main.construction_zone.deaths deathCount
scoreboard objectives add zev.advancement.tab.main.construction_zone.must_survive_time dummy
scoreboard objectives add zev.advancement.tab.main.darwinism.kills dummy
scoreboard objectives add zev.jacky.lit_time dummy
scoreboard objectives add zev.shrieker.shriek_time dummy
scoreboard objectives add zev.shrieker.warning dummy
scoreboard objectives add zev.stalac.phase_time dummy
scoreboard objectives add zev.crumble_guider.age dummy

# Indicate the namespace has been initialized
data modify storage zombies_evolved:data root.loaded set value 1b
