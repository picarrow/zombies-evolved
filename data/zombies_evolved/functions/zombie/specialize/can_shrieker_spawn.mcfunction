## AUTHOR: Picarrow

execute store result score #_y zev._ run data get entity @s Pos[1] 1
execute if score #_y zev._ <= $sea_level zev._ unless entity @s[type=minecraft:drowned] run scoreboard players set #_shrieker_can_spawn zev._ 1
