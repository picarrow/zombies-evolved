## AUTHOR: Picarrow

tp ~ ~1 ~
scoreboard players add #_height zev._ 1
execute if score #_height zev._ matches ..32 at @s if block ~ ~ ~ #zombies_evolved:free_space run function zombies_evolved:stalac/find_hang_point/compute_height
