## AUTHOR : Picarrow

# Determine dx and dz.
execute store result storage zombies_evolved:data _.func.ability.crumble.temp.max_index int 1 run scoreboard players remove #_positions_left zev._ 1
execute store result storage zombies_evolved:data _.func.ability.crumble.temp.index int 1 run function zombies_evolved:_ability/crumble/_11 with storage zombies_evolved:data _.func.ability.crumble.temp
function zombies_evolved:_ability/crumble/_12 with storage zombies_evolved:data _.func.ability.crumble.temp
execute store result score #_dx zev._ run data get storage zombies_evolved:data _.func.ability.crumble.temp.position[0]
execute store result score #_dz zev._ run data get storage zombies_evolved:data _.func.ability.crumble.temp.position[1]

# Proceed with the help of a marker.
execute summon minecraft:marker run function zombies_evolved:_ability/crumble/_13

# Continue to attempt guider spawns if:
# - The max number of attempts hasn't been reached.
# - The max number of guiders hasn't been reached.
# - There are still positions left to place guiders.
scoreboard players add #_attempts zev._ 1
execute if score #_attempts zev._ < #_max_attempts zev._ if score #_guiders zev._ < #_max_guiders zev._ if score #_positions_left zev._ matches 1.. run function zombies_evolved:_ability/crumble/_1
