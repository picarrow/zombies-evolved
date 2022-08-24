summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b},Tags:["picarrow.ze.jacky_pilfered"]}
data modify entity @e[type=minecraft:item,tag=picarrow.ze.jacky_pilfered,distance=..1,limit=1] Item set from entity @s Inventory[{Slot:103b}]
tag @e[type=minecraft:item,tag=picarrow.ze.jacky_pilfered,distance=..1] remove picarrow.ze.jacky_pilfered
item replace entity @s armor.head with minecraft:air
