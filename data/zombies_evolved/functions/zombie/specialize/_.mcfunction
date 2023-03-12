## AUTHOR : Picarrow

scoreboard players set #_is_special zev._ 0
execute if score $natural_spawning zev._ matches 1 run function zombies_evolved:zombie/specialize/select
execute if score #_is_special zev._ matches 0 run tag @s add zev.generic
tag @s add zev.specialized
