execute if score @s picarrow.hardcore_zombies.shrieker_shriek_timer matches 45 run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.9 1 0
execute if score @s picarrow.hardcore_zombies.shrieker_shriek_timer matches 45 run function picarrow.hardcore_zombies:_private/zombies/shrieker/abilities/emit_rings
execute if score @s picarrow.hardcore_zombies.shrieker_shriek_timer matches 40 run function picarrow.hardcore_zombies:_private/zombies/shrieker/abilities/emit_rings
execute if score @s picarrow.hardcore_zombies.shrieker_shriek_timer matches 35 run function picarrow.hardcore_zombies:_private/zombies/shrieker/abilities/emit_rings
execute if score @s picarrow.hardcore_zombies.shrieker_shriek_timer matches 30 run function picarrow.hardcore_zombies:_private/zombies/shrieker/abilities/emit_rings
execute if score @s picarrow.hardcore_zombies.shrieker_shriek_timer matches 25 run function picarrow.hardcore_zombies:_private/zombies/shrieker/abilities/emit_rings
execute if score @s picarrow.hardcore_zombies.shrieker_shriek_timer matches 20 run function picarrow.hardcore_zombies:_private/zombies/shrieker/abilities/emit_rings
execute if score @s picarrow.hardcore_zombies.shrieker_shriek_timer matches 15 run function picarrow.hardcore_zombies:_private/zombies/shrieker/abilities/emit_rings
execute if score @s picarrow.hardcore_zombies.shrieker_shriek_timer matches 10 run function picarrow.hardcore_zombies:_private/zombies/shrieker/abilities/emit_rings
execute if score @s picarrow.hardcore_zombies.shrieker_shriek_timer matches 5 run function picarrow.hardcore_zombies:_private/zombies/shrieker/abilities/emit_rings
execute if score @s picarrow.hardcore_zombies.shrieker_shriek_timer matches 0 run function picarrow.hardcore_zombies:_private/zombies/shrieker/abilities/emit_rings
execute if score @s picarrow.hardcore_zombies.shrieker_shriek_timer matches 0 run effect give @a[distance=..40] minecraft:darkness 12 0 true
execute if score @s picarrow.hardcore_zombies.shrieker_shriek_timer matches 0 if score @s picarrow.hardcore_zombies.shrieker_warning matches 1 run playsound minecraft:entity.warden.nearby_close hostile @a[distance=..40] ~ ~ ~ 1 1 0
execute if score @s picarrow.hardcore_zombies.shrieker_shriek_timer matches 0 if score @s picarrow.hardcore_zombies.shrieker_warning matches 2 run playsound minecraft:entity.warden.nearby_closer hostile @a[distance=..40] ~ ~ ~ 1 1 0
execute if score @s picarrow.hardcore_zombies.shrieker_shriek_timer matches 0 if score @s picarrow.hardcore_zombies.shrieker_warning matches 3 run playsound minecraft:entity.warden.nearby_closest hostile @a[distance=..40] ~ ~ ~ 1 1 0
execute if score @s picarrow.hardcore_zombies.shrieker_shriek_timer matches 0 if score @s picarrow.hardcore_zombies.shrieker_warning matches 4.. run tag @s add picarrow.hardcore_zombies.shrieker_summoning_warden
scoreboard players remove @s picarrow.hardcore_zombies.shrieker_shriek_timer 1
