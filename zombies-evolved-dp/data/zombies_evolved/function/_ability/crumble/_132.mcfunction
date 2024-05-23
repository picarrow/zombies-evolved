## AUTHOR : Picarrow

execute if score #_dy zev._ matches 0.. if block ~ ~ ~ #zombies_evolved:cubic_earth align xyz positioned ~0.5 ~ ~0.5 run return run function zombies_evolved:_ability/crumble/_1321
execute unless block ~ ~ ~ #zombies_evolved:free_space run return fail
scoreboard players add #_dy zev._ 1
execute if score #_dy zev._ matches ..4 positioned ~ ~1 ~ run function zombies_evolved:_ability/crumble/_132
