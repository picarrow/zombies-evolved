execute if score @s picarrow.ze.shrieker.shriek matches 45 run scoreboard players add @s picarrow.ze.shrieker.warning 1
execute if score @s picarrow.ze.shrieker.shriek matches 45 run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.9 1 0
execute if score @s picarrow.ze.shrieker.shriek matches 45 run function picarrow.zombies_evolved:event/emit_ring/_
execute if score @s picarrow.ze.shrieker.shriek matches 40 run function picarrow.zombies_evolved:event/emit_ring/_
execute if score @s picarrow.ze.shrieker.shriek matches 35 run function picarrow.zombies_evolved:event/emit_ring/_
execute if score @s picarrow.ze.shrieker.shriek matches 30 run function picarrow.zombies_evolved:event/emit_ring/_
execute if score @s picarrow.ze.shrieker.shriek matches 25 run function picarrow.zombies_evolved:event/emit_ring/_
execute if score @s picarrow.ze.shrieker.shriek matches 20 run function picarrow.zombies_evolved:event/emit_ring/_
execute if score @s picarrow.ze.shrieker.shriek matches 15 run function picarrow.zombies_evolved:event/emit_ring/_
execute if score @s picarrow.ze.shrieker.shriek matches 10 run function picarrow.zombies_evolved:event/emit_ring/_
execute if score @s picarrow.ze.shrieker.shriek matches 5 run function picarrow.zombies_evolved:event/emit_ring/_
execute if score @s picarrow.ze.shrieker.shriek matches 0 run function picarrow.zombies_evolved:event/emit_ring/_
execute if score @s picarrow.ze.shrieker.shriek matches 0 run effect give @a[distance=..40] minecraft:darkness 12 0 true
execute if score @s picarrow.ze.shrieker.shriek matches 0 if score @s picarrow.ze.shrieker.warning matches 1 run playsound minecraft:entity.warden.nearby_close hostile @a[distance=..40] ~ ~ ~ 1 1 0
execute if score @s picarrow.ze.shrieker.shriek matches 0 if score @s picarrow.ze.shrieker.warning matches 2 run playsound minecraft:entity.warden.nearby_closer hostile @a[distance=..40] ~ ~ ~ 1 1 0
execute if score @s picarrow.ze.shrieker.shriek matches 0 if score @s picarrow.ze.shrieker.warning matches 3.. run playsound minecraft:entity.warden.nearby_closest hostile @a[distance=..40] ~ ~ ~ 1 1 0
execute if score @s picarrow.ze.shrieker.shriek matches 0 if score @s picarrow.ze.shrieker.warning matches 4.. run tag @s add picarrow.ze.shrieker.enraged
scoreboard players remove @s picarrow.ze.shrieker.shriek 1
