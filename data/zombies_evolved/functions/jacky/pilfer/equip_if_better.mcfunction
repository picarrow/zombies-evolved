## AUTHOR: Picarrow

data modify storage zombies_evolved:equip_if_better item set from storage zombies_evolved:0 PilferedItemData.Item
function zombies_evolved:jacky/equip_if_better/_

execute if data storage zombies_evolved:equip_if_better {success:1b} run data remove storage zombies_evolved:0 PilferedItemData
execute if data storage zombies_evolved:equip_if_better old_item run data modify storage zombies_evolved:0 PilferedItemData.Item set from storage zombies_evolved:equip_if_better old_item
