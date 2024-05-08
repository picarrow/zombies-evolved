## AUTHOR : Picarrow

execute unless entity @s[tag=zev.assigned] run function zombies_evolved:entity/jacky/assign

# Check anger
scoreboard players set #_is_angry zev._ 0
execute on target run scoreboard players set #_is_angry zev._ 1
execute if entity @s[tag=!zev.jacky.angry] if score #_is_angry zev._ matches 1 run function zombies_evolved:entity/jacky/anger
execute if entity @s[tag=zev.jacky.angry] if score #_is_angry zev._ matches 0 run function zombies_evolved:entity/jacky/quell

execute if score @s zev.jacky.lit_time matches 0.. run function zombies_evolved:entity/jacky/update_lit

# TODO: nonoptimal; NBT should not be modified every tick unless absolutely necessary
data merge entity @s {InWaterTime:-1}
execute if score $debug_mode zev._ matches 1 run effect give @s minecraft:glowing 1 0 true
