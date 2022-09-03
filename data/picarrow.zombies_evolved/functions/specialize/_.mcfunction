execute store result score #y picarrow.ze._ run data get entity @s Pos[1] 1
execute if score #y picarrow.ze._ <= $sea_level picarrow.ze._ unless entity @s[type=minecraft:drowned] run function picarrow.zombies_evolved:specialize/underground_walkers

execute unless entity @s[tag=picarrow.ze.specialized] run function picarrow.zombies_evolved:specialize/default
