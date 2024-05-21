## AUTHOR : Picarrow

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone"},Motion:[0d,0.3d,0d],PickupDelay:40s,Tags:["zev._dummy"]}
execute as @e[type=minecraft:item,tag=zev._dummy,distance=..0.00001,limit=1] run function zombies_evolved:_ability/pilfer/_221
