## AUTHOR : Picarrow

function zombies_evolved:entity/stalac/find_hang_point/_
execute store result score #_height zev._ run data get storage zombies_evolved:data func.find_hang_point.out.height

execute if score #_height zev._ matches 8..32 if data storage zombies_evolved:data func.find_hang_point.out{valid:1b} if biome ~ ~ ~ minecraft:dripstone_caves run scoreboard players set #_stalac_can_spawn zev._ 1
execute if score #_height zev._ matches 8..32 if data storage zombies_evolved:data func.find_hang_point.out{habitat:1b,valid:1b} run scoreboard players set #_stalac_can_spawn zev._ 1
