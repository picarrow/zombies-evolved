## AUTHOR: Picarrow

# If the data pack was initialized, ticks all zombies
# Excludes zombie villagers
execute if score #loaded zev._ matches 1 as @e[type=#zombies_evolved:targets] at @s run function zombies_evolved:zombie/tick
