## AUTHOR: Picarrow

# height
scoreboard players set #_height zev._ 0
function zombies_evolved:stalac/find_hang_point/compute_height
scoreboard players remove #_height zev._ 1
execute store result storage zombies_evolved:find_hang_point Height int 1 run scoreboard players get #_height zev._

# valid
data merge storage zombies_evolved:find_hang_point {Valid:0b}
execute at @s if block ~ ~ ~ #zombies_evolved:stalac_base align xz unless entity @e[dy=-1,type=#zombies_evolved:targets,tag=zev.stalac.hanging] run data merge storage zombies_evolved:find_hang_point {Valid:1b}

# habitat
data merge storage zombies_evolved:find_hang_point {Habitat:0b}
execute at @s if block ~ ~ ~ minecraft:dripstone_block run data merge storage zombies_evolved:find_hang_point {Habitat:1b}

# spawn point
execute at @s run tp @s ~ ~-0.00001 ~
data modify storage zombies_evolved:find_hang_point SpawnPoint set from entity @s Pos

kill @s
