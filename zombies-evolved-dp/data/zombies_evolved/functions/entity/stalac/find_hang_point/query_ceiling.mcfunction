## AUTHOR : Picarrow

# Recursively attempts to locate the ceiling
# Stops when the marker has:
# 1. Encountered a non-empty block position (found the ceiling)
# 2. Traveled for more than 32 blocks (given up)
scoreboard players set #_height zev._ -1
execute positioned ~ ~-1 ~ run function zombies_evolved:entity/stalac/find_hang_point/traverse_marker

# Records the height of the ceiling into the NBT 'height'
# A height of -1 indicates that a ceiling was not found
execute store result storage zombies_evolved:data func.find_hang_point.out.height int 1 positioned as @s unless block ~ ~ ~ #zombies_evolved:free_space run scoreboard players get #_height zev._

# Records whether the hang point is valid into the NBT 'valid'
# A hang point is valid if:
# 1. The ceiling block is suitable for a stalac
# 2. Another stalac is not already hanging at that point
# If valid, records the hang point into the NBT 'hang_point'
execute unless score #_height zev._ matches -1 positioned as @s align xyz run tp @s ~0.5 ~ ~0.5
execute store success storage zombies_evolved:data func.find_hang_point.out.valid byte 1 unless score #_height zev._ matches -1 positioned as @s if block ~ ~ ~ #zombies_evolved:stalac_can_hang_on align xyz unless entity @e[dy=-1,type=#zombies_evolved:can_evolve,tag=zev.stalac.hanging,limit=1] run data modify storage zombies_evolved:data func.find_hang_point.out.hang_point set from entity @s Pos

# Records whether the hang point is ideal into the NBT 'habitat'
# A hang point is ideal if the ceiling block is a dripstone block
execute store success storage zombies_evolved:data func.find_hang_point.out.habitat byte 1 positioned as @s if block ~ ~ ~ minecraft:dripstone_block

# Kills the marker
kill @s
