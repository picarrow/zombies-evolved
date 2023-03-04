## AUTHOR: Picarrow

execute if score @s zev.jacky.lit_time matches 10 if entity @s[tag=zev.jacky.angry] run data modify entity @s ArmorItems[3] set value {id:"minecraft:carved_pumpkin",Count:1b}
execute if score @s zev.jacky.lit_time matches 0 if entity @s[tag=zev.jacky.angry] run data modify entity @s ArmorItems[3] set value {id:"minecraft:jack_o_lantern",Count:1b}
scoreboard players remove @s zev.jacky.lit_time 1
