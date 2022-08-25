data modify storage picarrow.zombies_evolved:temp Item set from entity @s Inventory[{Slot:103b}]
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b},Tags:["picarrow.ze.jacky_pilfered"]}
execute as @e[type=minecraft:item,tag=picarrow.ze.jacky_pilfered,distance=..0.1,limit=1] run function picarrow.zombies_evolved:_private/zombies/jacky/abilities/drop_helmet_1
item replace entity @s armor.head with minecraft:air
