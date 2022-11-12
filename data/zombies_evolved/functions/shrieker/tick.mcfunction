## AUTHOR: Picarrow

execute unless entity @s[tag=zev.assigned] run function zombies_evolved:shrieker/assign

execute if score @s zev.shrieker.shriek_time matches 0.. run function zombies_evolved:shrieker/is_shrieking
execute if entity @s[tag=zev.shrieker.enraged] unless entity @e[type=minecraft:warden,distance=..24] if data entity @s {OnGround:1b} run function zombies_evolved:erupt_warden
