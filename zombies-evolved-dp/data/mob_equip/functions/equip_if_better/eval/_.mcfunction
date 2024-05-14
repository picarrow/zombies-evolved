## AUTHOR : Picarrow

# Stores the item for efficient access
data modify storage mob_equip:equip_if_better temp.item_to_eval set from entity @s HandItems[0]

# Checks if the item can be equipped
# A value of -1 signifies the item cannot be equipped
scoreboard players set #_tier meq._ -1
execute store result score #_tags meq._ run data get storage mob_equip:equip_if_better temp.item_to_eval
execute if score #_tags meq._ matches 1.. run scoreboard players set #_tier meq._ 0

# Different evaluation of item tier depending on the slot
execute if score #_slot meq._ matches 0 run function mob_equip:equip_if_better/eval/_1
execute if score #_slot meq._ matches 1..4 run function mob_equip:equip_if_better/eval/_2

# Queries the number of custom item tags the item has
scoreboard players set #_custom_tags meq._ 0
execute if data storage mob_equip:equip_if_better temp.item_to_eval.components store result score #_custom_tags meq._ run data get storage mob_equip:equip_if_better temp.item_to_eval.components

# Queries the amount of damage the item has taken
scoreboard players set #_damage meq._ 0
execute if data storage mob_equip:equip_if_better temp.item_to_eval.components."minecraft:damage" store result score #_damage meq._ run data get storage mob_equip:equip_if_better temp.item_to_eval.components."minecraft:damage"
