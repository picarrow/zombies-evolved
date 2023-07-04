## AUTHOR : Picarrow

# Initializes the output
data modify storage mob_equip:equip_if_better root.out set value {equipped:0b}

# Stores the entity's NBT into memory
data modify storage mob_equip:equip_if_better temp.entity set from entity @s

# Determines the slot the input item belongs to
# A value of -1 signifies there is no valid slot for the item
data modify entity @s HandItems[0] set from storage mob_equip:equip_if_better root.in.item
scoreboard players set #_slot meq._ -1
execute unless data storage mob_equip:equip_if_better root.in.ignore_slots{feet:1b} if predicate mob_equip:in_main_hand/has_armor/type/boots run scoreboard players set #_slot meq._ 1
execute unless data storage mob_equip:equip_if_better root.in.ignore_slots{legs:1b} if predicate mob_equip:in_main_hand/has_armor/type/leggings run scoreboard players set #_slot meq._ 2
execute unless data storage mob_equip:equip_if_better root.in.ignore_slots{chest:1b} if predicate mob_equip:in_main_hand/has_armor/type/chestplate run scoreboard players set #_slot meq._ 3
execute unless data storage mob_equip:equip_if_better root.in.ignore_slots{head:1b} if predicate mob_equip:in_main_hand/has_armor/type/helmet run scoreboard players set #_slot meq._ 4
execute unless data storage mob_equip:equip_if_better root.in.ignore_slots{mainhand:1b} if score #_slot meq._ matches -1 run scoreboard players set #_slot meq._ 0

# Proceeds if there is a valid slot for the input item
execute unless score #_slot meq._ matches -1 run function mob_equip:equip_if_better/_2

# Merges the stored entity NBT back into the entity
data modify entity @s {} merge from storage mob_equip:equip_if_better temp.entity

# Deletes the temp data
data remove storage mob_equip:equip_if_better temp
