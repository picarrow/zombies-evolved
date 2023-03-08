## AUTHOR  : Picarrow
##
## CONTEXT : at executor

# Sets the default tier value
# 0: default
# 1: any item that can actually be equipped
execute store result score #_tags zev._ run data get entity @s HandItems[0]
execute store success score #_tier zev._ if score #_tags zev._ matches 1..

# Different evaluation paths depending on item type
execute if predicate zombies_evolved:in_main_hand/has_armor/_ run function zombies_evolved:jacky/equip_if_better/eval_tier_armor
execute if predicate zombies_evolved:in_main_hand/has_weapon/_ run function zombies_evolved:jacky/equip_if_better/eval_tier_weapon
