## AUTHOR : Picarrow

# Check anger
scoreboard players set #_is_angry zev._ 0
execute on target run scoreboard players set #_is_angry zev._ 1
execute if entity @s[tag=!zev.jacky.angry] if score #_is_angry zev._ matches 1 run function zombies_evolved:_evolution/_type/_jacky/tick/_1
execute if entity @s[tag=zev.jacky.angry] if score #_is_angry zev._ matches 0 run function zombies_evolved:_evolution/_type/_jacky/tick/_2

execute if score @s zev.jacky.lit_time matches 0.. run function zombies_evolved:_evolution/_type/_jacky/tick/_3

execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"periodic_tick":595}} run data merge entity @s {InWaterTime:-1}
execute if score $debug_mode zev._ matches 1 run effect give @s minecraft:glowing 1 0 true
