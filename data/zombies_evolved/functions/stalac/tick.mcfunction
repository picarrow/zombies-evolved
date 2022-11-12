## AUTHOR: Picarrow

execute unless entity @s[tag=zev.assigned] run function zombies_evolved:stalac/assign
execute if entity @s[tag=zev.stalac.hanging] at @s run function zombies_evolved:stalac/update_hang
execute if entity @s[tag=zev.stalac.falling] at @s run function zombies_evolved:stalac/update_fall
execute if entity @s[tag=!zev.stalac.hanging,tag=!zev.stalac.falling] if score @s zev.stalac.phase_time matches 0.. run function zombies_evolved:stalac/update_impact
