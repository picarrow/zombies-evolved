## AUTHOR : Picarrow

data modify entity @s ArmorDropChances[3] set value 0f
item replace entity @s armor.head with minecraft:dripstone_block
data merge entity @s {CanPickUpLoot:0b}

# Stalacs should dismount vehicles in order to hang
# Due to MC-264022, this isn't possible
# execute if predicate zombies_evolved:has_vehicle run ride @s dismount

function zombies_evolved:entity/stalac/find_hang_point/_
execute if entity @s[tag=!zev.artificial] unless predicate zombies_evolved:has_vehicle if data storage zombies_evolved:data func.find_hang_point.out{valid:1b} run function zombies_evolved:entity/stalac/hang
execute if entity @s[tag=zev.artificial] unless predicate zombies_evolved:has_vehicle if data storage zombies_evolved:data func.find_hang_point.out{height:1,valid:1b} run function zombies_evolved:entity/stalac/hang
