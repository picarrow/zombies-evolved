## AUTHOR: Picarrow

# This objective tracks the settings, along with variables and constants
scoreboard objectives add zev._ dummy

# Initializes the data pack
execute unless score #loaded zev._ = #loaded zev._ run function zombies_evolved:load_initial
