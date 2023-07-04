## AUTHOR : Picarrow

function zombies_evolved:entity/stalac/find_hang_point/_
execute store result score #_height zev._ run data get storage zombies_evolved:data func.find_hang_point.out.height

execute unless score #_height zev._ matches 8..32 run return 0
execute if data storage zombies_evolved:data func.find_hang_point.out{valid:0b} run return 0

execute if biome ~ ~ ~ minecraft:dripstone_caves run return 1
execute if data storage zombies_evolved:data func.find_hang_point.out{habitat:1b} run return 1

return 0
