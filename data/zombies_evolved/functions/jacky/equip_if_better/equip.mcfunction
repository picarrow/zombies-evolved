## AUTHOR: Picarrow

# Save the old item to the output storage if there is one
execute store result score #_num_tags zev._ run data get storage zombies_evolved:_temp root.old_item
execute if score #_num_tags zev._ matches 1.. run data modify storage zombies_evolved:equip_if_better old_item set from storage zombies_evolved:_temp root.old_item

# Place the new item into its appropriate slot, replacing any old item if there is one
execute if score #_slot zev._ matches 1 run data modify storage zombies_evolved:_temp root.zombie.ArmorItems[0] set from storage zombies_evolved:equip_if_better item
execute if score #_slot zev._ matches 2 run data modify storage zombies_evolved:_temp root.zombie.ArmorItems[1] set from storage zombies_evolved:equip_if_better item
execute if score #_slot zev._ matches 3 run data modify storage zombies_evolved:_temp root.zombie.ArmorItems[2] set from storage zombies_evolved:equip_if_better item
execute if score #_slot zev._ matches 4 run data modify storage zombies_evolved:_temp root.zombie.ArmorItems[3] set from storage zombies_evolved:equip_if_better item

# Ensure the slot with the new item has a 100% drop chance
execute if score #_slot zev._ matches 1 run data modify storage zombies_evolved:_temp root.zombie.ArmorDropChances[0] set value 2f
execute if score #_slot zev._ matches 2 run data modify storage zombies_evolved:_temp root.zombie.ArmorDropChances[1] set value 2f
execute if score #_slot zev._ matches 3 run data modify storage zombies_evolved:_temp root.zombie.ArmorDropChances[2] set value 2f
execute if score #_slot zev._ matches 4 run data modify storage zombies_evolved:_temp root.zombie.ArmorDropChances[3] set value 2f

# Merge the temporary zombie nbt into the actual zombie's nbt
data modify entity @s {} merge from storage zombies_evolved:_temp root.zombie

# Play the corresponding equip sound for the equipped item
#playsound minecraft:item.armor.equip_generic hostile @a ~ ~ ~ 1 1 0
execute if score #_new_tier zev._ matches 1 run playsound minecraft:item.armor.equip_leather hostile @a ~ ~ ~ 1 1 0
execute if score #_new_tier zev._ matches 2 run playsound minecraft:item.armor.equip_gold hostile @a ~ ~ ~ 1 1 0
execute if score #_new_tier zev._ matches 3 run playsound minecraft:item.armor.equip_chain hostile @a ~ ~ ~ 1 1 0
execute if score #_new_tier zev._ matches 4 run playsound minecraft:item.armor.equip_iron hostile @a ~ ~ ~ 1 1 0
execute if score #_new_tier zev._ matches 5 run playsound minecraft:item.armor.equip_turtle hostile @a ~ ~ ~ 1 1 0
execute if score #_new_tier zev._ matches 6 run playsound minecraft:item.armor.equip_diamond hostile @a ~ ~ ~ 1 1 0
execute if score #_new_tier zev._ matches 7 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1 0
