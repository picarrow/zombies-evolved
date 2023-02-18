## AUTHOR: Picarrow

# Recursively attempts to locate the ceiling
# Stops when the helper has:
# 1. Encountered a non-empty block position (found the ceiling)
# 2. Traveled for more than 32 blocks (given up)
scoreboard players set #_height zev._ -1
execute positioned ~ ~-1 ~ run function zombies_evolved:stalac/find_hang_point/traverse_marker

# Records the height of the ceiling into the nbt tag 'height'
# A height of -1 indicates that a ceiling was not found
execute if score #_height zev._ matches 32 positioned as @s if block ~ ~ ~ #zombies_evolved:free_space run scoreboard players set #_height zev._ -1
execute store result storage zombies_evolved:find_hang_point height int 1 run scoreboard players get #_height zev._

# Records whether the hang point is valid into the nbt tag 'valid'
# A hang point is valid if:
# 1. The ceiling block is suitable for a stalac
# 2. Another stalac is not already hanging at that point
data merge storage zombies_evolved:find_hang_point {valid:0b}
execute positioned as @s if block ~ ~ ~ #zombies_evolved:stalac_hangable align xyz unless entity @e[dy=-1,type=#zombies_evolved:targets,tag=zev.stalac.hanging] run data merge storage zombies_evolved:find_hang_point {valid:1b}

# Records the hang point into the nbt tag 'hang_point'
execute if score #_height zev._ matches -1 run data remove storage zombies_evolved:find_hang_point hang_point
execute unless score #_height zev._ matches -1 positioned as @s align xyz run tp @s ~0.5 ~ ~0.5
execute unless score #_height zev._ matches -1 run data modify storage zombies_evolved:find_hang_point hang_point set from entity @s Pos

# Records whether the hang point is ideal into the nbt tag 'habitat'
# A hang point is ideal if the ceiling block is a dripstone block
data merge storage zombies_evolved:find_hang_point {habitat:0b}
execute positioned as @s if block ~ ~ ~ minecraft:dripstone_block run data merge storage zombies_evolved:find_hang_point {habitat:1b}

# Destroys the helper entity
kill @s
