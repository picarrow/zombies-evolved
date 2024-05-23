## AUTHOR : Picarrow

# Equip the stolen item, if it's better than the existing equipped items, ignoring
# the head slot.
data modify storage mob_equip:data _.func.equip_if_better.in set value {ignore_slots:{head:{}}}
data modify storage mob_equip:data _.func.equip_if_better.in.new_item set from storage zombies_evolved:data _.func.ability.pilfer.temp.item_to_steal
function mob_equip:equip_if_better/_

# Store the discarded item to drop, if there is one.
execute unless data storage mob_equip:data _.func.equip_if_better.out.equipped run return run data modify storage zombies_evolved:data _.func.ability.pilfer.temp.item_to_drop set from storage mob_equip:data _.func.equip_if_better.in.new_item
execute if data storage mob_equip:data _.func.equip_if_better.out.old_item run data modify storage zombies_evolved:data _.func.ability.pilfer.temp.item_to_drop set from storage mob_equip:data _.func.equip_if_better.out.old_item
