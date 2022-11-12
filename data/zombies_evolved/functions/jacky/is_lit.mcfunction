## AUTHOR: Picarrow

execute if score @s zev.jacky.lit_time matches 10 run item replace entity @s armor.head with minecraft:jack_o_lantern
execute if score @s zev.jacky.lit_time matches 0 run item replace entity @s armor.head with minecraft:carved_pumpkin
scoreboard players remove @s zev.jacky.lit_time 1
