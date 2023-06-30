## AUTHOR : Picarrow

# Arrows
execute as @e[type=minecraft:arrow] at @s run function zombies_evolved:entity/arrow/tick

# Crumble guiders
execute as @e[type=minecraft:marker,tag=zev.crumble_guider] at @s run function zombies_evolved:entity/crumble_guider/tick

# Players
execute as @a at @s run function zombies_evolved:entity/player/tick

# Special zombies
execute as @e[type=#zombies_evolved:can_specialize] at @s run function zombies_evolved:entity/special_zombie/tick
