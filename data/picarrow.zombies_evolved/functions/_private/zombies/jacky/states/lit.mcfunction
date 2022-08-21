execute if score @s picarrow.ze.jacky_lit_timer matches 10 run item replace entity @s armor.head with minecraft:jack_o_lantern
execute if score @s picarrow.ze.jacky_lit_timer matches 0 run item replace entity @s armor.head with minecraft:carved_pumpkin
scoreboard players remove @s picarrow.ze.jacky_lit_timer 1
