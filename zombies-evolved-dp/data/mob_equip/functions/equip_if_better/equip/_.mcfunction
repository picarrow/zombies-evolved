## AUTHOR : Picarrow

# Place the new item into the slot it belongs to
execute if score #_desired_slot meq._ matches 5 run data modify storage mob_equip:data _.func.equip_if_better.temp.entity.HandItems[0] set from storage mob_equip:data _.func.equip_if_better.in.new_item
execute if score #_desired_slot meq._ matches 1 run data modify storage mob_equip:data _.func.equip_if_better.temp.entity.ArmorItems[0] set from storage mob_equip:data _.func.equip_if_better.in.new_item
execute if score #_desired_slot meq._ matches 2 run data modify storage mob_equip:data _.func.equip_if_better.temp.entity.ArmorItems[1] set from storage mob_equip:data _.func.equip_if_better.in.new_item
execute if score #_desired_slot meq._ matches 3 run data modify storage mob_equip:data _.func.equip_if_better.temp.entity.ArmorItems[2] set from storage mob_equip:data _.func.equip_if_better.in.new_item
execute if score #_desired_slot meq._ matches 4 run data modify storage mob_equip:data _.func.equip_if_better.temp.entity.ArmorItems[3] set from storage mob_equip:data _.func.equip_if_better.in.new_item

# Set the slot with the new item to have a 100% drop chance
execute if score #_desired_slot meq._ matches 5 run data modify storage mob_equip:data _.func.equip_if_better.temp.entity.HandDropChances[0] set value 2f
execute if score #_desired_slot meq._ matches 1 run data modify storage mob_equip:data _.func.equip_if_better.temp.entity.ArmorDropChances[0] set value 2f
execute if score #_desired_slot meq._ matches 2 run data modify storage mob_equip:data _.func.equip_if_better.temp.entity.ArmorDropChances[1] set value 2f
execute if score #_desired_slot meq._ matches 3 run data modify storage mob_equip:data _.func.equip_if_better.temp.entity.ArmorDropChances[2] set value 2f
execute if score #_desired_slot meq._ matches 4 run data modify storage mob_equip:data _.func.equip_if_better.temp.entity.ArmorDropChances[3] set value 2f

# Prohibit the entity from despawning in the future
data modify storage mob_equip:data _.func.equip_if_better.temp.entity.PersistenceRequired set value 1b

# Play the corresponding equip sound for the equipped item
execute if score #_desired_slot meq._ matches 5 at @s run playsound minecraft:entity.item.pickup hostile @a
execute if score #_desired_slot meq._ matches 1..4 if score #_tier_of_new meq._ matches 1 at @s run playsound minecraft:item.armor.equip_generic hostile @a
execute if score #_desired_slot meq._ matches 1..4 if score #_tier_of_new meq._ matches 2 at @s run playsound minecraft:item.armor.equip_leather hostile @a
execute if score #_desired_slot meq._ matches 1..4 if score #_tier_of_new meq._ matches 3 at @s run playsound minecraft:item.armor.equip_gold hostile @a
execute if score #_desired_slot meq._ matches 1..4 if score #_tier_of_new meq._ matches 4 at @s run playsound minecraft:item.armor.equip_chain hostile @a
execute if score #_desired_slot meq._ matches 1..4 if score #_tier_of_new meq._ matches 5 at @s run playsound minecraft:item.armor.equip_iron hostile @a
execute if score #_desired_slot meq._ matches 1..4 if score #_tier_of_new meq._ matches 6 at @s run playsound minecraft:item.armor.equip_turtle hostile @a
execute if score #_desired_slot meq._ matches 1..4 if score #_tier_of_new meq._ matches 7 at @s run playsound minecraft:item.armor.equip_diamond hostile @a
execute if score #_desired_slot meq._ matches 1..4 if score #_tier_of_new meq._ matches 8 at @s run playsound minecraft:item.armor.equip_netherite hostile @a

# Inform the caller the new item is equipped
data modify storage mob_equip:data _.func.equip_if_better.out.equipped set value {}

# Stores the old item into the output, if there is one
execute if data storage mob_equip:data _.func.equip_if_better.temp.item_to_eval.id run data modify storage mob_equip:data _.func.equip_if_better.out.old_item set from storage mob_equip:data _.func.equip_if_better.temp.item_to_eval
