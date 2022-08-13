execute unless score @s picarrow.hardcore_zombies.spawner_ember_timer matches 0.. run scoreboard players set @s picarrow.hardcore_zombies.spawner_ember_timer 10
execute if score @s picarrow.hardcore_zombies.spawner_ember_timer matches 10 run function picarrow.hardcore_zombies:_private/zombies/spawner/abilities/emit_embers
scoreboard players remove @s picarrow.hardcore_zombies.spawner_ember_timer 1
