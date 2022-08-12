summon minecraft:item ~ ~ ~ {Tags:["picarrow.hardcore_zombies.knocked_helmet"],Item:{id:"minecraft:stick",Count:1b}}
data modify entity @e[tag=picarrow.hardcore_zombies.knocked_helmet,limit=1,sort=nearest] Item set from entity @s Inventory[{Slot:103b}]
tag @e[tag=picarrow.hardcore_zombies.knocked_helmet,limit=1,sort=nearest] remove picarrow.hardcore_zombies.knocked_helmet
item replace entity @s armor.head with minecraft:air
