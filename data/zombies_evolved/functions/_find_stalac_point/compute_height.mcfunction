## AUTHOR: Picarrow

tp ~ ~1 ~
scoreboard players add #height zev._find_stalac_point 1
execute if score #height zev._find_stalac_point matches 1..32 at @s if block ~ ~ ~ #zombies_evolved:stalac_permeable run function zombies_evolved:_find_stalac_point/compute_height
