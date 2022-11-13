## AUTHOR: Picarrow

data modify entity @s ArmorDropChances[3] set value 0f
item replace entity @s armor.head with minecraft:dripstone_block
data merge entity @s {CustomName:'',CanPickUpLoot:0b}

function zombies_evolved:_find_stalac_point/_
execute store result score #height zev._ run data get storage zombies_evolved:_find_stalac_point Height
execute store result score #valid zev._ run data get storage zombies_evolved:_find_stalac_point Valid
execute store result score #universal zev._ run data get storage zombies_evolved:_find_stalac_point Universal
execute if entity @s[tag=!zev.artificial] if score #valid zev._ matches 1 run function zombies_evolved:stalac/hang
execute if entity @s[tag=zev.artificial] if score #valid zev._ matches 1 if score #height zev._ matches 1 run function zombies_evolved:stalac/hang

tag @s add zev.assigned
