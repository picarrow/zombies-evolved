## AUTHOR: Picarrow

function zombies_evolved:stalac/find_hang_point/_
execute store result score #_height zev._ run data get storage zombies_evolved:find_hang_point height

execute if data storage zombies_evolved:find_hang_point {habitat:1b} if score #_height zev._ matches 8..32 if data storage zombies_evolved:find_hang_point {valid:1b} run scoreboard players set #_stalac_can_spawn zev._ 1
execute if biome ~ ~ ~ minecraft:dripstone_caves if score #_height zev._ matches 8..32 if data storage zombies_evolved:find_hang_point {valid:1b} run scoreboard players set #_stalac_can_spawn zev._ 1
