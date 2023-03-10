## AUTHOR: Picarrow

# Equips the pilfered item if it's better
# Ignores the head slot
data modify storage zombies_evolved:equip_if_better in set value {ignore_slots:{head:1b}}
data modify storage zombies_evolved:equip_if_better in.item set from storage zombies_evolved:_temp root.pilfered_item
execute on attacker run function zombies_evolved:jacky/equip_if_better/_

# Stores an item to drop, if there's an extra
execute if data storage zombies_evolved:equip_if_better out{equipped:0b} run data modify storage zombies_evolved:_temp root.item_to_drop set from storage zombies_evolved:equip_if_better in.item
execute if data storage zombies_evolved:equip_if_better out.item run data modify storage zombies_evolved:_temp root.item_to_drop set from storage zombies_evolved:equip_if_better out.item
