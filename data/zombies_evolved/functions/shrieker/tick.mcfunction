## AUTHOR: Picarrow

execute unless entity @s[tag=zev.assigned] run function zombies_evolved:shrieker/assign

execute if score @s zev.shrieker.shriek_time matches 0.. run function zombies_evolved:shrieker/is_shrieking
execute if entity @s[tag=zev.shrieker.enraged,nbt={OnGround:1b}] unless entity @e[type=minecraft:warden,distance=..24,limit=1] run function zombies_evolved:shrieker/erupt_warden
