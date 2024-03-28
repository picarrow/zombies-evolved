## AUTHOR : Picarrow

# Equips the item if it's better
# Ignores the head slot
data modify storage mob_equip:equip_if_better root.in set value {ignore_slots:{head:{}}}
data modify storage mob_equip:equip_if_better root.in.item set from storage zombies_evolved:pilfer temp.stolen_item
execute on attacker run function mob_equip:_/equip_if_better

# Stores an item to drop, if there's an extra
execute if data storage mob_equip:equip_if_better root.out{equipped:0b} run data modify storage zombies_evolved:pilfer temp.item_to_drop set from storage mob_equip:equip_if_better root.in.item
execute if data storage mob_equip:equip_if_better root.out.item run data modify storage zombies_evolved:pilfer temp.item_to_drop set from storage mob_equip:equip_if_better root.out.item
