## AUTHOR : Picarrow

execute if entity @s[tag=zev.shrieker.shrieking] run function zombies_evolved:_evolution/_type/_shrieker/tick/_1
execute if entity @s[tag=zev.shrieker.enraged,nbt={OnGround:1b}] unless entity @e[type=minecraft:warden,distance=..24,limit=1] run function zombies_evolved:_evolution/_type/_shrieker/tick/_2

# TODO: nonoptimal; NBT should not be modified every tick unless absolutely necessary
data merge entity @s {InWaterTime:-1}
execute if score $debug_mode zev._ matches 1 run effect give @s minecraft:glowing 1 0 true
