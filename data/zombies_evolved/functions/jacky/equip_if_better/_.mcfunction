## AUTHOR : Picarrow
##
## INPUT  : executor -> zombie
##          zombies_evolved:equip_if_better -> item
##
## OUTPUT : zombies_evolved:equip_if_better -> old_item, success

data modify storage zombies_evolved:_temp root.zombie set from entity @s

execute at @s summon minecraft:armor_stand run function zombies_evolved:jacky/equip_if_better/query_items

data merge storage zombies_evolved:equip_if_better {success:0b}
data remove storage zombies_evolved:equip_if_better old_item
execute store success storage zombies_evolved:equip_if_better success byte 1 if score #_new_tier zev._ > #_old_tier zev._ run function zombies_evolved:jacky/equip_if_better/equip

data remove storage zombies_evolved:_temp root
