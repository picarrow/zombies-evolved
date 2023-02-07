## AUTHOR: Picarrow

function zombies_evolved:stalac/find_hang_point/_
execute store result score #_habitat zev._ run data get storage zombies_evolved:find_hang_point Habitat
execute store result score #_height zev._ run data get storage zombies_evolved:find_hang_point Height
execute store result score #_valid zev._ run data get storage zombies_evolved:find_hang_point Valid

execute if score #_habitat zev._ matches 1 if score #_height zev._ matches 8..32 if score #_valid zev._ matches 1 run scoreboard players set #_stalac_can_spawn zev._ 1
execute if biome ~ ~ ~ minecraft:dripstone_caves if score #_height zev._ matches 8..32 if score #_valid zev._ matches 1 run scoreboard players set #_stalac_can_spawn zev._ 1
