## AUTHOR : Picarrow
##
## INPUT  : executor -> zombie
##          zombies_evolved:equip_if_better -> item
##
## OUTPUT : zombies_evolved:equip_if_better -> success, old_item

# Store the zombie's nbt into memory
data modify storage zombies_evolved:_temp root.zombie set from entity @s

# Query the new and old item using an armor stand
execute at @s summon minecraft:armor_stand run function zombies_evolved:jacky/equip_if_better/query_items

# Query the number of nbt tags each item has
execute if data storage zombies_evolved:equip_if_better item.tag store result score #_new_item_tags zev._ run data get storage zombies_evolved:equip_if_better item.tag
execute if data storage zombies_evolved:_temp root.old_item.tag store result score #_old_item_tags zev._ run data get storage zombies_evolved:_temp root.old_item.tag

# Equip the new item if it is of a higher tier or of an equal tier with more nbt tags
data remove storage zombies_evolved:equip_if_better old_item
data merge storage zombies_evolved:equip_if_better {success:0b}
execute store success storage zombies_evolved:equip_if_better success byte 1 if score #_new_tier zev._ > #_old_tier zev._ at @s run function zombies_evolved:jacky/equip_if_better/equip
execute store success storage zombies_evolved:equip_if_better success byte 1 if data storage zombies_evolved:equip_if_better {success:0b} if score #_new_tier zev._ = #_old_tier zev._ if score #_new_item_tags zev._ > #_old_item_tags zev._ at @s run function zombies_evolved:jacky/equip_if_better/equip

# Clears the temp storage
data remove storage zombies_evolved:_temp root
