## AUTHOR : Picarrow

execute if entity @s[type=minecraft:drowned] run return 0

execute store result score #_y zev._ run data get entity @s Pos[1] 1
execute if score #_y zev._ > $sea_level zev._ run return 0

return 1
