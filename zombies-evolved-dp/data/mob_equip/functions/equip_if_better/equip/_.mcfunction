## AUTHOR : Picarrow

# Places the new item into the slot it belongs to
execute if score #_slot meq._ matches 0 run data modify storage mob_equip:equip_if_better temp.entity.HandItems[0] set from storage mob_equip:equip_if_better root.in.item
execute if score #_slot meq._ matches 1 run data modify storage mob_equip:equip_if_better temp.entity.ArmorItems[0] set from storage mob_equip:equip_if_better root.in.item
execute if score #_slot meq._ matches 2 run data modify storage mob_equip:equip_if_better temp.entity.ArmorItems[1] set from storage mob_equip:equip_if_better root.in.item
execute if score #_slot meq._ matches 3 run data modify storage mob_equip:equip_if_better temp.entity.ArmorItems[2] set from storage mob_equip:equip_if_better root.in.item
execute if score #_slot meq._ matches 4 run data modify storage mob_equip:equip_if_better temp.entity.ArmorItems[3] set from storage mob_equip:equip_if_better root.in.item

# Ensures the slot with the new item has a 100% drop chance
execute if score #_slot meq._ matches 0 run data modify storage mob_equip:equip_if_better temp.entity.HandDropChances[0] set value 2f
execute if score #_slot meq._ matches 1 run data modify storage mob_equip:equip_if_better temp.entity.ArmorDropChances[0] set value 2f
execute if score #_slot meq._ matches 2 run data modify storage mob_equip:equip_if_better temp.entity.ArmorDropChances[1] set value 2f
execute if score #_slot meq._ matches 3 run data modify storage mob_equip:equip_if_better temp.entity.ArmorDropChances[2] set value 2f
execute if score #_slot meq._ matches 4 run data modify storage mob_equip:equip_if_better temp.entity.ArmorDropChances[3] set value 2f

# Ensures that the entity can no longer despawn
data modify storage mob_equip:equip_if_better temp.entity.PersistenceRequired set value 1b

# Plays the corresponding equip sound for the equipped item
execute if score #_slot meq._ matches 0 run playsound minecraft:entity.item.pickup hostile @a
execute if score #_slot meq._ matches 1..4 if score #_new_tier meq._ matches 0 run playsound minecraft:item.armor.equip_generic hostile @a
execute if score #_slot meq._ matches 1..4 if score #_new_tier meq._ matches 1 run playsound minecraft:item.armor.equip_leather hostile @a
execute if score #_slot meq._ matches 1..4 if score #_new_tier meq._ matches 2 run playsound minecraft:item.armor.equip_gold hostile @a
execute if score #_slot meq._ matches 1..4 if score #_new_tier meq._ matches 3 run playsound minecraft:item.armor.equip_chain hostile @a
execute if score #_slot meq._ matches 1..4 if score #_new_tier meq._ matches 4 run playsound minecraft:item.armor.equip_iron hostile @a
execute if score #_slot meq._ matches 1..4 if score #_new_tier meq._ matches 5 run playsound minecraft:item.armor.equip_turtle hostile @a
execute if score #_slot meq._ matches 1..4 if score #_new_tier meq._ matches 6 run playsound minecraft:item.armor.equip_diamond hostile @a
execute if score #_slot meq._ matches 1..4 if score #_new_tier meq._ matches 7 run playsound minecraft:item.armor.equip_netherite hostile @a

# Informs the caller the item is equipped
data modify storage mob_equip:equip_if_better root.out.equipped set value 1b
