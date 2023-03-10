## AUTHOR : Picarrow

# Clears the old output
data remove storage zombies_evolved:equip_if_better out

# Stores the entity's NBT into memory
data modify storage zombies_evolved:_temp root.entity set from entity @s

# Determines the slot the input item belongs to
# A value of -1 signifies there is no valid slot for the item
data modify entity @s HandItems[0] set from storage zombies_evolved:equip_if_better in.item
scoreboard players set #_slot zev._ -1
execute unless data storage zombies_evolved:equip_if_better in.ignore_slots{feet:1b} if predicate zombies_evolved:in_main_hand/has_armor/type/boots run scoreboard players set #_slot zev._ 1
execute unless data storage zombies_evolved:equip_if_better in.ignore_slots{legs:1b} if predicate zombies_evolved:in_main_hand/has_armor/type/leggings run scoreboard players set #_slot zev._ 2
execute unless data storage zombies_evolved:equip_if_better in.ignore_slots{chest:1b} if predicate zombies_evolved:in_main_hand/has_armor/type/chestplate run scoreboard players set #_slot zev._ 3
execute unless data storage zombies_evolved:equip_if_better in.ignore_slots{head:1b} if predicate zombies_evolved:in_main_hand/has_armor/type/helmet run scoreboard players set #_slot zev._ 4
execute unless data storage zombies_evolved:equip_if_better in.ignore_slots{mainhand:1b} if score #_slot zev._ matches -1 run scoreboard players set #_slot zev._ 0

# Proceeds if there is a valid slot for the input item
execute unless score #_slot zev._ matches -1 run function zombies_evolved:jacky/equip_if_better/_2
execute if score #_slot zev._ matches -1 run data modify storage zombies_evolved:equip_if_better out set value {equipped:0b}

# Merges the stored entity NBT back into the entity
data modify entity @s {} merge from storage zombies_evolved:_temp root.entity

# Clears the temp storage
data remove storage zombies_evolved:_temp root
