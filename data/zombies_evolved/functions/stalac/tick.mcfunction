## AUTHOR: Picarrow

execute unless entity @s[tag=zev.assigned] run function zombies_evolved:stalac/assign
execute if entity @s[tag=zev.stalac.hanging] positioned as @s run function zombies_evolved:stalac/update_hang
execute if entity @s[tag=zev.stalac.falling] positioned as @s run function zombies_evolved:stalac/update_fall
execute if entity @s[tag=zev.stalac.landing] run function zombies_evolved:stalac/update_impact
