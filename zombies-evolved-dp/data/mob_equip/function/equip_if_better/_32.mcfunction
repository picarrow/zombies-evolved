## AUTHOR : Picarrow

data modify storage mob_equip:data _.func.equip_if_better.temp.item_to_eval set value {}
$data modify storage mob_equip:data _.func.equip_if_better.temp.item_to_eval set from storage mob_equip:data _.func.equip_if_better.temp.entity.equipment.$(nbt_path_of_old_item)
