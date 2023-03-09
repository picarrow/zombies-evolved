## AUTHOR  : Picarrow
##
## CONTEXT : at executor

# Places the new item into the slot it belongs to
execute if score #_slot zev._ matches 0 run data modify storage zombies_evolved:_temp root.zombie.HandItems[0] set from storage zombies_evolved:equip_if_better in.item
execute if score #_slot zev._ matches 1 run data modify storage zombies_evolved:_temp root.zombie.ArmorItems[0] set from storage zombies_evolved:equip_if_better in.item
execute if score #_slot zev._ matches 2 run data modify storage zombies_evolved:_temp root.zombie.ArmorItems[1] set from storage zombies_evolved:equip_if_better in.item
execute if score #_slot zev._ matches 3 run data modify storage zombies_evolved:_temp root.zombie.ArmorItems[2] set from storage zombies_evolved:equip_if_better in.item
execute if score #_slot zev._ matches 4 run data modify storage zombies_evolved:_temp root.zombie.ArmorItems[3] set from storage zombies_evolved:equip_if_better in.item

# Ensures the slot with the new item has a 100% drop chance
execute if score #_slot zev._ matches 0 run data modify storage zombies_evolved:_temp root.zombie.HandDropChances[0] set value 2f
execute if score #_slot zev._ matches 1 run data modify storage zombies_evolved:_temp root.zombie.ArmorDropChances[0] set value 2f
execute if score #_slot zev._ matches 2 run data modify storage zombies_evolved:_temp root.zombie.ArmorDropChances[1] set value 2f
execute if score #_slot zev._ matches 3 run data modify storage zombies_evolved:_temp root.zombie.ArmorDropChances[2] set value 2f
execute if score #_slot zev._ matches 4 run data modify storage zombies_evolved:_temp root.zombie.ArmorDropChances[3] set value 2f

# Ensures that the zombie can no longer despawn
data modify storage zombies_evolved:_temp root.zombie.PersistenceRequired set value 1b

# Merges the temporary zombie nbt into the actual zombie's nbt
data modify entity @s {} merge from storage zombies_evolved:_temp root.zombie

# Plays the corresponding equip sound for the equipped item
execute if score #_slot zev._ matches 0 run playsound minecraft:entity.item.pickup hostile @a
execute if score #_slot zev._ matches 1..4 if score #_new_tier zev._ matches 1 run playsound minecraft:item.armor.equip_generic hostile @a
execute if score #_slot zev._ matches 1..4 if score #_new_tier zev._ matches 2 run playsound minecraft:item.armor.equip_leather hostile @a
execute if score #_slot zev._ matches 1..4 if score #_new_tier zev._ matches 3 run playsound minecraft:item.armor.equip_gold hostile @a
execute if score #_slot zev._ matches 1..4 if score #_new_tier zev._ matches 4 run playsound minecraft:item.armor.equip_chain hostile @a
execute if score #_slot zev._ matches 1..4 if score #_new_tier zev._ matches 5 run playsound minecraft:item.armor.equip_iron hostile @a
execute if score #_slot zev._ matches 1..4 if score #_new_tier zev._ matches 6 run playsound minecraft:item.armor.equip_turtle hostile @a
execute if score #_slot zev._ matches 1..4 if score #_new_tier zev._ matches 7 run playsound minecraft:item.armor.equip_diamond hostile @a
execute if score #_slot zev._ matches 1..4 if score #_new_tier zev._ matches 8 run playsound minecraft:item.armor.equip_netherite hostile @a
