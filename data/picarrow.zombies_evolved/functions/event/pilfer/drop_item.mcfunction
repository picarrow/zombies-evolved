summon minecraft:item ~ ~ ~ {PickupDelay:40s,Motion:[0d,0.3d,0d],Item:{id:"minecraft:stick",Count:1b}}
data modify entity @e[type=minecraft:item,distance=..0.001,sort=nearest,limit=1] Item set from storage picarrow.zombies_evolved:_pilfer.1 Item
data remove storage picarrow.zombies_evolved:_pilfer.1 Item
