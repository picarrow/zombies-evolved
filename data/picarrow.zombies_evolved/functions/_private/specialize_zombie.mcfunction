execute store result score #y picarrow.ze.variable run data get entity @s Pos[1] 1
execute if score #y picarrow.ze.variable <= $sea_level picarrow.ze.config unless entity @s[type=minecraft:drowned] run function picarrow.zombies_evolved:_private/choose_class/by_underground_walkers

execute unless entity @s[tag=picarrow.ze.specialized] run function picarrow.zombies_evolved:_private/choose_class/by_default
