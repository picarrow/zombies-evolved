## AUTHOR : Picarrow

execute unless entity @s[tag=zev.assigned] run function zombies_evolved:entity/stalac/assign
execute if entity @s[tag=zev.stalac.hanging] positioned as @s run function zombies_evolved:entity/stalac/update_hang
execute if entity @s[tag=zev.stalac.falling] positioned as @s run function zombies_evolved:entity/stalac/update_fall

# TODO: nonoptimal; NBT should not be modified every tick unless absolutely necessary
data merge entity @s {InWaterTime:-1}
execute if score $debug_mode zev._ matches 1 run effect give @s minecraft:glowing 1 0 true

execute if entity @s[tag=zev.stalac.landing] run function zombies_evolved:entity/stalac/update_impact
