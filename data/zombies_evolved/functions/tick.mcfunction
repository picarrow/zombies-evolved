## AUTHOR: Picarrow

# Ticks all zombies, excluding zombie villagers
execute as @e[type=#zombies_evolved:targets] at @s run function zombies_evolved:zombie/tick

# Ticks crumble guiders
execute as @e[type=minecraft:marker,tag=zev.crumble_guider] at @s run function zombies_evolved:stalac/crumble/guider/tick

# Ticks arrows
execute as @e[type=minecraft:arrow] at @s run function zombies_evolved:arrow/tick
