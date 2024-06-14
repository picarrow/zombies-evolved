## AUTHOR : Picarrow

# Check for target and make visibly angry.
scoreboard players set #_has_target zev._ 0
execute on target run scoreboard players set #_has_target zev._ 1
execute if entity @s[tag=!zev.jacky.visibly_angry] if score #_has_target zev._ matches 1 run function zombies_evolved:_evolution/_type/_jacky/tick_all/_11
execute if entity @s[tag=zev.jacky.visibly_angry] if score #_has_target zev._ matches 0 run function zombies_evolved:_evolution/_type/_jacky/tick_all/_12

# Update lit state.
execute if entity @s[scores={zev.jacky.lit_time=0..},tag=zev.jacky.visibly_angry] run function zombies_evolved:_evolution/_type/_jacky/tick_all/_13

# Prevent conversion to drowned.
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"periodic_tick":595}} run data merge entity @s {InWaterTime:-1}

# Make executor glow, if debug mode is on.
execute if score $debug_mode zev._ matches 1 run effect give @s minecraft:glowing 1 0 true
