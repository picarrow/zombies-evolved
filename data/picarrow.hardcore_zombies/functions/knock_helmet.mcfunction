### AUTHOR: Picarrow

summon minecraft:item ~ ~ ~ {Tags:["hcz.knocked_helmet"],Item:{id:"minecraft:stick",Count:1b}}
data modify entity @e[tag=hcz.knocked_helmet,limit=1,sort=nearest] Item set from entity @s Inventory[{Slot:103b}]
tag @e[tag=hcz.knocked_helmet,limit=1,sort=nearest] remove hcz.knocked_helmet
item replace entity @s armor.head with minecraft:air
