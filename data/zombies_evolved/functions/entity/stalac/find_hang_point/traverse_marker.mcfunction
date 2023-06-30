## AUTHOR : Picarrow

tp @s ~ ~1 ~
scoreboard players add #_height zev._ 1
execute if score #_height zev._ matches ..31 positioned as @s if block ~ ~ ~ #zombies_evolved:free_space run function zombies_evolved:entity/stalac/find_hang_point/traverse_marker
