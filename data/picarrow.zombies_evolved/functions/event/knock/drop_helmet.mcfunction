data modify storage picarrow.zombies_evolved:temp Item set from entity @s Inventory[{Slot:103b}]
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b},Tags:["picarrow.ze.jacky_knocked"]}
execute as @e[type=minecraft:item,tag=picarrow.ze.jacky_knocked,distance=..0.1,limit=1] run function picarrow.zombies_evolved:event/knock/drop_helmet_1
item replace entity @s armor.head with minecraft:air
