## AUTHOR: Picarrow

data modify entity @s ArmorDropChances[3] set value 0f
item replace entity @s armor.head with minecraft:carved_pumpkin
data merge entity @s {CustomName:'',CanPickUpLoot:0b}

tag @s add zev.assigned
