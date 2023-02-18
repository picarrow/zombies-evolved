## AUTHOR: Picarrow

data modify entity @s ArmorDropChances[3] set value 0f
item replace entity @s armor.head with minecraft:dripstone_block
data merge entity @s {CustomName:'',CanPickUpLoot:0b}

function zombies_evolved:stalac/find_hang_point/_
execute if entity @s[tag=!zev.artificial] if data storage zombies_evolved:find_hang_point {valid:1b} run function zombies_evolved:stalac/hang
execute if entity @s[tag=zev.artificial] if data storage zombies_evolved:find_hang_point {valid:1b} if data storage zombies_evolved:find_hang_point {height:1} run function zombies_evolved:stalac/hang

tag @s add zev.assigned
