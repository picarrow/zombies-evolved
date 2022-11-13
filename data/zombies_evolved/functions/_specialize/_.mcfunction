## AUTHOR: Picarrow

execute store result score #y zev._ run data get entity @s Pos[1] 1
function zombies_evolved:_find_stalac_point/_
execute store result score #height zev._ run data get storage zombies_evolved:_find_stalac_point Height
execute store result score #valid zev._ run data get storage zombies_evolved:_find_stalac_point Valid
execute if score #y zev._ <= $sea_level zev._ unless entity @s[type=minecraft:drowned] if score #valid zev._ matches 1 if score #height zev._ matches 8..32 run function zombies_evolved:_specialize/underground_stalacy_walkers
execute unless entity @s[tag=zev.specialized] if score #valid zev._ matches 1 if score #height zev._ matches 8..32 run function zombies_evolved:_specialize/stalac_optimal
execute unless entity @s[tag=zev.specialized] if score #y zev._ <= $sea_level zev._ unless entity @s[type=minecraft:drowned] run function zombies_evolved:_specialize/underground_walkers
execute unless entity @s[tag=zev.specialized] run function zombies_evolved:_specialize/default
