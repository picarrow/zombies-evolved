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

# Store the map that serves as reference for the pilfer ability
data modify storage zombies_evolved:data _.func."ability.pilfer".lookup.slot_alias_map set value { \
  -106: "weapon.offhand", \
  0: "hotbar.0", \
  1: "hotbar.1", \
  2: "hotbar.2", \
  3: "hotbar.3", \
  4: "hotbar.4", \
  5: "hotbar.5", \
  6: "hotbar.6", \
  7: "hotbar.7", \
  8: "hotbar.8", \
  9: "inventory.0", \
  10: "inventory.1", \
  11: "inventory.2", \
  12: "inventory.3", \
  13: "inventory.4", \
  14: "inventory.5", \
  15: "inventory.6", \
  16: "inventory.7", \
  17: "inventory.8", \
  18: "inventory.9", \
  19: "inventory.10", \
  20: "inventory.11", \
  21: "inventory.12", \
  22: "inventory.13", \
  23: "inventory.14", \
  24: "inventory.15", \
  25: "inventory.16", \
  26: "inventory.17", \
  27: "inventory.18", \
  28: "inventory.19", \
  29: "inventory.20", \
  30: "inventory.21", \
  31: "inventory.22", \
  32: "inventory.23", \
  33: "inventory.24", \
  34: "inventory.25", \
  35: "inventory.26", \
  100: "armor.feet", \
  101: "armor.legs", \
  102: "armor.chest", \
  103: "armor.head" \
}

# Indicate the namespace has been initialized
data modify storage zombies_evolved:data _.loaded set value {}
