summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b},Tags:["picarrow.ze.dropped_helmet"]}
data modify entity @e[type=minecraft:item,tag=picarrow.ze.dropped_helmet,distance=..5,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:103b}]
tag @e[type=minecraft:item,tag=picarrow.ze.knocked_helmet,distance=..5,sort=nearest,limit=1] remove picarrow.ze.dropped_helmet
item replace entity @s armor.head with minecraft:air
