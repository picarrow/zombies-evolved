## AUTHOR : Picarrow

execute if entity @s[tag=zev.stalac.hanging] positioned as @s run function zombies_evolved:_evolution/_type/_stalac/tick/_1
execute if entity @s[tag=zev.stalac.falling] positioned as @s run function zombies_evolved:_evolution/_type/_stalac/tick/_2
execute if entity @s[tag=zev.stalac.landing] run function zombies_evolved:_evolution/_type/_stalac/tick/_3

# TODO: nonoptimal; NBT should not be modified every tick unless absolutely necessary
data merge entity @s {InWaterTime:-1}
execute if score $debug_mode zev._ matches 1 run effect give @s minecraft:glowing 1 0 true
