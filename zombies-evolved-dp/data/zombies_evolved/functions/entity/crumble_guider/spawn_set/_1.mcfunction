## AUTHOR : Picarrow

# Determine dx and dz
execute store result storage zombies_evolved:_ _.func.crumble.temp.max int 1 run scoreboard players remove #_positions_left zev._ 1
function zombies_evolved:entity/crumble_guider/spawn_set/_11 with storage zombies_evolved:_ _.func.crumble.temp
function zombies_evolved:entity/crumble_guider/spawn_set/_12 with storage zombies_evolved:_ _.func.crumble.temp
execute store result score #_dx zev._ run data get storage zombies_evolved:_ _.func.crumble.temp.position[0]
execute store result score #_dz zev._ run data get storage zombies_evolved:_ _.func.crumble.temp.position[1]

# Proceed with the help of a marker
execute summon minecraft:marker run function zombies_evolved:entity/crumble_guider/spawn_set/_13

# Continue to attempt guider spawns if:
# - The max number of attempts hasn't been reached
# - The max number of guiders hasn't been reached
# - There are still positions left to place guiders
scoreboard players add #_attempts zev._ 1
execute if score #_attempts zev._ < #_max_attempts zev._ if score #_guiders zev._ < #_max_guiders zev._ if score #_positions_left zev._ matches 1.. run function zombies_evolved:entity/crumble_guider/spawn_set/_1
