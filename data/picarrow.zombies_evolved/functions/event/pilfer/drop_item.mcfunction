summon minecraft:item ~ ~ ~ {Tags:["picarrow.ze._pilfered.0"],PickupDelay:40s,Motion:[0d,0.3d,0d],Item:{id:"minecraft:stick",Count:1b}}
execute as @e[type=minecraft:item,tag=picarrow.ze._pilfered.0,distance=..0.00001,limit=1] run function picarrow.zombies_evolved:event/pilfer/copy_item
data remove storage picarrow.zombies_evolved:_pilfer.0 PilferedItem
