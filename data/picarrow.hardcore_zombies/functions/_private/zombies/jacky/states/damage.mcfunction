execute if score @s picarrow.hardcore_zombies.jacky_damage_timer matches 10 run playsound minecraft:entity.ghast.hurt hostile @a ~ ~ ~ 1 0.2 0
execute if score @s picarrow.hardcore_zombies.jacky_damage_timer matches 10 run item replace entity @s armor.head with minecraft:jack_o_lantern
execute if score @s picarrow.hardcore_zombies.jacky_damage_timer matches 0 run item replace entity @s armor.head with minecraft:carved_pumpkin
scoreboard players remove @s picarrow.hardcore_zombies.jacky_damage_timer 1
