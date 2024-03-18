## AUTHOR : Picarrow

# Special-zombie spawn egg markers
execute as @e[tag=zev.jacky_spawn_egg_marker] at @s run function zombies_evolved:entity/spawn_egg_marker/tick {evolution:"jacky"}
execute as @e[tag=zev.shrieker_spawn_egg_marker] at @s run function zombies_evolved:entity/spawn_egg_marker/tick {evolution:"shrieker"}
execute as @e[tag=zev.stalac_spawn_egg_marker] at @s run function zombies_evolved:entity/spawn_egg_marker/tick {evolution:"stalac"}

# Arrows
execute as @e[type=minecraft:arrow] at @s run function zombies_evolved:entity/arrow/tick

# Stalac Memory Guiders
execute as @e[tag=zev.stalac_memory_guider] at @s run function zombies_evolved:entity/stalac_memory_guider/tick

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
