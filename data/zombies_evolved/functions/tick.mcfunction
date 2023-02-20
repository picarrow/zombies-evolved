## AUTHOR: Picarrow

# Ticks all zombies, excluding zombie villagers
execute as @e[type=#zombies_evolved:targets] at @s run function zombies_evolved:zombie/tick

# Ticks crumble helpers
execute as @e[type=minecraft:marker,tag=zev.crumble_helper] at @s run function zombies_evolved:crumble_helper/tick
