## AUTHOR : Picarrow

# Special-zombie spawn egg markers
execute as @e[tag=zev.jacky_spawn_egg_marker] at @s run function zombies_evolved:_entity/_spawn_egg_marker/tick/_ {evolution:"jacky"}
execute as @e[tag=zev.shrieker_spawn_egg_marker] at @s run function zombies_evolved:_entity/_spawn_egg_marker/tick/_ {evolution:"shrieker"}
execute as @e[tag=zev.stalac_spawn_egg_marker] at @s run function zombies_evolved:_entity/_spawn_egg_marker/tick/_ {evolution:"stalac"}

# Stalac Memory Guiders
execute as @e[tag=zev.stalac_memory_guider] at @s run function zombies_evolved:_entity/_stalac_memory_guider/tick/_

# Crumble guiders
execute as @e[tag=zev.crumble_guider] at @s run function zombies_evolved:_entity/_crumble_guider/tick/_

# Players
execute as @a at @s run function zombies_evolved:_entity/_player/tick/_

# New Spawns
execute if score $natural_spawning zev._ matches 0 as @e[type=#zombies_evolved:can_evolve,tag=!zev.evolved] run function zombies_evolved:_evolution/_type/_generic/assign/_
execute if score $natural_spawning zev._ matches 1 as @e[type=#zombies_evolved:can_evolve,tag=!zev.evolved] run function zombies_evolved:_evolution/evolve_naturally/_

# Jackies
execute as @e[tag=zev.jacky] at @s run function zombies_evolved:_evolution/_type/_jacky/tick/_

# Shriekers
execute as @e[tag=zev.shrieker] at @s run function zombies_evolved:_evolution/_type/_shrieker/tick/_

# Stalacs
execute as @e[tag=zev.stalac] at @s run function zombies_evolved:_evolution/_type/_stalac/tick/_
