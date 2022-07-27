### AUTHOR: Picarrow

execute if score @s hcz.shrieker_shriek_timer matches 45 run scoreboard players add @s hcz.shrieker_warning 1
execute if score @s hcz.shrieker_shriek_timer matches 45 run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.9 1 0
execute if score @s hcz.shrieker_shriek_timer matches 45 run particle minecraft:shriek 0 ~ ~1.75 ~ 0 0 0 1 1
execute if score @s hcz.shrieker_shriek_timer matches 40 run particle minecraft:shriek 0 ~ ~1.75 ~ 0 0 0 1 1
execute if score @s hcz.shrieker_shriek_timer matches 35 run particle minecraft:shriek 0 ~ ~1.75 ~ 0 0 0 1 1
execute if score @s hcz.shrieker_shriek_timer matches 30 run particle minecraft:shriek 0 ~ ~1.75 ~ 0 0 0 1 1
execute if score @s hcz.shrieker_shriek_timer matches 25 run particle minecraft:shriek 0 ~ ~1.75 ~ 0 0 0 1 1
execute if score @s hcz.shrieker_shriek_timer matches 20 run particle minecraft:shriek 0 ~ ~1.75 ~ 0 0 0 1 1
execute if score @s hcz.shrieker_shriek_timer matches 15 run particle minecraft:shriek 0 ~ ~1.75 ~ 0 0 0 1 1
execute if score @s hcz.shrieker_shriek_timer matches 10 run particle minecraft:shriek 0 ~ ~1.75 ~ 0 0 0 1 1
execute if score @s hcz.shrieker_shriek_timer matches 5 run particle minecraft:shriek 0 ~ ~1.75 ~ 0 0 0 1 1
execute if score @s hcz.shrieker_shriek_timer matches 0 run particle minecraft:shriek 0 ~ ~1.75 ~ 0 0 0 1 1
execute if score @s hcz.shrieker_shriek_timer matches 0 run effect give @a[distance=..40] minecraft:darkness 12 0 true
execute if score @s hcz.shrieker_shriek_timer matches 0 if score @s hcz.shrieker_warning matches 1 run playsound minecraft:entity.warden.nearby_close hostile Picarrow ~ ~ ~ 1 1 0
execute if score @s hcz.shrieker_shriek_timer matches 0 if score @s hcz.shrieker_warning matches 2 run playsound minecraft:entity.warden.nearby_closer hostile Picarrow ~ ~ ~ 1 1 0
execute if score @s hcz.shrieker_shriek_timer matches 0 if score @s hcz.shrieker_warning matches 3 run playsound minecraft:entity.warden.nearby_closest hostile Picarrow ~ ~ ~ 1 1 0
execute if score @s hcz.shrieker_shriek_timer matches 0 if score @s hcz.shrieker_warning matches 4.. if data entity @s {OnGround:1b} unless entity @e[type=warden,distance=..24] store success score @s hcz.shrieker_summoned_warden run summon minecraft:warden ~ ~ ~ {Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L},"minecraft:is_emerging":{value:{},ttl:85L}}}}
kill @e[scores={hcz.shrieker_summoned_warden=1}]
scoreboard players remove @s hcz.shrieker_shriek_timer 1
