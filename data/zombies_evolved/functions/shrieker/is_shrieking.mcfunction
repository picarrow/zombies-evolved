## AUTHOR: Picarrow

execute if score @s zev.shrieker.shriek_time matches 45 run scoreboard players add @s zev.shrieker.warning 1
execute if score @s zev.shrieker.shriek_time matches 45 run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.9 1 0
execute if score @s zev.shrieker.shriek_time matches 45 run function zombies_evolved:shrieker/emit_shriek
execute if score @s zev.shrieker.shriek_time matches 40 run function zombies_evolved:shrieker/emit_shriek
execute if score @s zev.shrieker.shriek_time matches 35 run function zombies_evolved:shrieker/emit_shriek
execute if score @s zev.shrieker.shriek_time matches 30 run function zombies_evolved:shrieker/emit_shriek
execute if score @s zev.shrieker.shriek_time matches 25 run function zombies_evolved:shrieker/emit_shriek
execute if score @s zev.shrieker.shriek_time matches 20 run function zombies_evolved:shrieker/emit_shriek
execute if score @s zev.shrieker.shriek_time matches 15 run function zombies_evolved:shrieker/emit_shriek
execute if score @s zev.shrieker.shriek_time matches 10 run function zombies_evolved:shrieker/emit_shriek
execute if score @s zev.shrieker.shriek_time matches 5 run function zombies_evolved:shrieker/emit_shriek
execute if score @s zev.shrieker.shriek_time matches 0 run function zombies_evolved:shrieker/emit_shriek
execute if score @s zev.shrieker.shriek_time matches 0 run effect give @a[distance=..40] minecraft:darkness 12 0 true
execute if score @s zev.shrieker.shriek_time matches 0 if score @s zev.shrieker.warning matches 1 run playsound minecraft:entity.warden.nearby_close hostile @a[distance=..40] ~ ~ ~ 1 1 0
execute if score @s zev.shrieker.shriek_time matches 0 if score @s zev.shrieker.warning matches 2 run playsound minecraft:entity.warden.nearby_closer hostile @a[distance=..40] ~ ~ ~ 1 1 0
execute if score @s zev.shrieker.shriek_time matches 0 if score @s zev.shrieker.warning matches 3.. run playsound minecraft:entity.warden.nearby_closest hostile @a[distance=..40] ~ ~ ~ 1 1 0
execute if score @s zev.shrieker.shriek_time matches 0 if score @s zev.shrieker.warning matches 4.. run tag @s add zev.shrieker.enraged
scoreboard players remove @s zev.shrieker.shriek_time 1
