## AUTHOR : Picarrow

# Checks if the item can be equipped
# A value of -1 signifies the item cannot be equipped
data modify storage zombies_evolved:_temp root.item_to_eval set from entity @s HandItems[0]
execute store result score #_tags zev._ run data get storage zombies_evolved:_temp root.item_to_eval
execute store success score #_tier zev._ if score #_tags zev._ matches 1..
scoreboard players remove #_tier zev._ 1

# Different evaluation of item tier depending on the slot
execute if score #_slot zev._ matches 0 run function zombies_evolved:jacky/equip_if_better/eval_tier_as_weapon
execute if score #_slot zev._ matches 1..4 run function zombies_evolved:jacky/equip_if_better/eval_tier_as_armor

# Queries the number of custom item tags the item has
scoreboard players set #_custom_tags zev._ 0
execute if data storage zombies_evolved:_temp root.item_to_eval.tag store result score #_custom_tags zev._ run data get storage zombies_evolved:_temp root.item_to_eval.tag

# Queries the amount of damage the item has taken
scoreboard players set #_damage zev._ 0
execute if data storage zombies_evolved:_temp root.item_to_eval.tag.Damage store result score #_damage zev._ run data get storage zombies_evolved:_temp root.item_to_eval.tag.Damage
