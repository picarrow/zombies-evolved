## AUTHOR : Picarrow

# Advancement Updates
advancement grant @a only zombies_evolved:tab/main/root just_exist
function zombies_evolved:_advancement/_tab/_main/_darwinism/all_player_criteria_checking/_

# Spawn Egg Placers
execute if entity @e[tag=zev.placer.active,limit=1] run function zombies_evolved:tick/_1

# Crumble Guiders
execute as @e[tag=zev.crumble_guider] at @s run function zombies_evolved:_entity/_crumble_guider/tick/_

# Nametag Hiders
kill @e[tag=zev.nametag_hider,predicate=!zombies_evolved:has_vehicle]

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
