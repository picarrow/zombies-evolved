## AUTHOR : Picarrow

summon minecraft:item ~ ~ ~ {Tags:["zev._dummy"],PickupDelay:40s,Motion:[0d,0.3d,0d],Item:{id:"minecraft:stick",Count:1b}}
execute as @e[type=minecraft:item,tag=zev._dummy,distance=..0.00001,limit=1] run function zombies_evolved:jacky/pilfer/drop_item_1
