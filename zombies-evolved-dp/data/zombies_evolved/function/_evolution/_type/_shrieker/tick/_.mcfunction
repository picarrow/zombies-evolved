## AUTHOR : Picarrow

execute if entity @s[tag=zev.shrieker.shrieking] run function zombies_evolved:_evolution/_type/_shrieker/tick/_1
execute if entity @s[tag=zev.shrieker.enraged,nbt={OnGround:1b}] unless entity @e[type=minecraft:warden,distance=..24,limit=1] run function zombies_evolved:_evolution/_type/_shrieker/tick/_2

execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"periodic_tick":595}} run data merge entity @s {InWaterTime:-1}
execute if score $debug_mode zev._ matches 1 run effect give @s minecraft:glowing 1 0 true
