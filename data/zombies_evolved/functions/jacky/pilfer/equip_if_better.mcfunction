## AUTHOR: Picarrow

data modify storage zombies_evolved:equip_if_better item set from storage zombies_evolved:_temp root.pilfered_item
execute on attacker run function zombies_evolved:jacky/equip_if_better/_

execute if data storage zombies_evolved:equip_if_better {success:0b} run data modify storage zombies_evolved:_temp root.item_to_drop set from storage zombies_evolved:equip_if_better item
execute if data storage zombies_evolved:equip_if_better old_item run data modify storage zombies_evolved:_temp root.item_to_drop set from storage zombies_evolved:equip_if_better old_item
