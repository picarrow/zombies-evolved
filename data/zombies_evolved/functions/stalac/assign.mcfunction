## AUTHOR: Picarrow

data modify entity @s ArmorDropChances[3] set value 0f
item replace entity @s armor.head with minecraft:dripstone_block
data merge entity @s {CustomName:'',CanPickUpLoot:0b}

function zombies_evolved:stalac/find_hang_point/_
execute store result score #_height zev._ run data get storage zombies_evolved:find_hang_point Height
execute store result score #_valid zev._ run data get storage zombies_evolved:find_hang_point Valid
execute if entity @s[tag=!zev.artificial] if score #_valid zev._ matches 1 run function zombies_evolved:stalac/hang
execute if entity @s[tag=zev.artificial] if score #_valid zev._ matches 1 if score #_height zev._ matches 1 run function zombies_evolved:stalac/hang

tag @s add zev.assigned
