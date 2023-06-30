## AUTHOR : Picarrow

data modify entity @s ArmorDropChances[3] set value 0f
item replace entity @s armor.head with minecraft:dripstone_block
data merge entity @s {CustomName:'',CanPickUpLoot:0b}

function zombies_evolved:entity/stalac/find_hang_point/_
execute if entity @s[tag=!zev.artificial] if data storage zombies_evolved:data func.find_hang_point.out{valid:1b} run function zombies_evolved:entity/stalac/hang
execute if entity @s[tag=zev.artificial] if data storage zombies_evolved:data func.find_hang_point.out{height:1,valid:1b} run function zombies_evolved:entity/stalac/hang

tag @s add zev.assigned
