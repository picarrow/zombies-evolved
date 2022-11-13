## AUTHOR: Picarrow

# height
function zombies_evolved:_find_stalac_point/compute_height
scoreboard players remove #height zev._find_stalac_point 1
execute store result storage zombies_evolved:_find_stalac_point Height int 1 run scoreboard players get #height zev._find_stalac_point

# valid
data merge storage zombies_evolved:_find_stalac_point {Valid:0b}
execute at @s if block ~ ~ ~ #zombies_evolved:stalac_base unless entity @e[dy=-1,type=#zombies_evolved:targets,tag=zev.stalac.hanging] run data merge storage zombies_evolved:_find_stalac_point {Valid:1b}

# habitat
data merge storage zombies_evolved:_find_stalac_point {Habitat:0b}
execute at @s if block ~ ~ ~ minecraft:dripstone_block run data merge storage zombies_evolved:_find_stalac_point {Habitat:1b}

# spawn point
execute at @s run tp @s ~ ~-0.00001 ~
data modify storage zombies_evolved:_find_stalac_point SpawnPoint set from entity @s Pos

kill @s
