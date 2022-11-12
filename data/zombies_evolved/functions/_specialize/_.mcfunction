## AUTHOR: Picarrow

execute store result score #y zev._ run data get entity @s Pos[1] 1
execute if score #y zev._ <= $sea_level zev._ unless entity @s[type=minecraft:drowned] run function zombies_evolved:specialize/underground_walkers

execute unless entity @s[tag=zev.specialized] run function zombies_evolved:specialize/default
