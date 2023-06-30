## AUTHOR : Picarrow

# Specializes plain zombies
execute if entity @s[tag=!zev.specialized,tag=!zev.artificial] run function zombies_evolved:util/specialize_zombie_variant/_

# Ticks zombie variants
execute if entity @s[tag=zev.jacky] run function zombies_evolved:entity/jacky/tick
execute if entity @s[tag=zev.shrieker] run function zombies_evolved:entity/shrieker/tick
execute if entity @s[tag=zev.stalac] run function zombies_evolved:entity/stalac/tick
# TODO: nonoptimal; NBT should not be modified every tick unless absolutely necessary
execute unless entity @s[tag=zev.generic] run data merge entity @s {InWaterTime:-1}
execute if score $debug_mode zev._ matches 1 unless entity @s[tag=zev.generic] run effect give @s minecraft:glowing 1 0 true
