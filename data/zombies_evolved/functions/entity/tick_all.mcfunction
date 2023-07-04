## AUTHOR : Picarrow

# Arrows
execute as @e[type=minecraft:arrow] at @s run function zombies_evolved:entity/arrow/tick

# Crumble guiders
execute as @e[tag=zev.crumble_guider] at @s run function zombies_evolved:entity/crumble_guider/tick

# Players
execute as @a at @s run function zombies_evolved:entity/player/tick

# New Spawns
execute as @e[type=#zombies_evolved:can_specialize,tag=!zev.specialized,tag=!zev.artificial] at @s run function zombies_evolved:util/specialize/_

# Jackies
execute as @e[tag=zev.jacky] at @s run function zombies_evolved:entity/jacky/tick

# Shriekers
execute as @e[tag=zev.shrieker] at @s run function zombies_evolved:entity/shrieker/tick

# Stalacs
execute as @e[tag=zev.stalac] at @s run function zombies_evolved:entity/stalac/tick
