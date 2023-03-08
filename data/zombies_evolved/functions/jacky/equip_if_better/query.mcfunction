## AUTHOR  : Picarrow
##
## CONTEXT : at executor

# Gives the new item to the armor stand for evaluation
data modify entity @s HandItems[0] set from storage zombies_evolved:equip_if_better item

# Determines the slot the new item belongs to
# Default value is main hand
scoreboard players set #_slot zev._ 0
execute if predicate zombies_evolved:in_main_hand/has_armor/type/boots run scoreboard players set #_slot zev._ 1
execute if predicate zombies_evolved:in_main_hand/has_armor/type/leggings run scoreboard players set #_slot zev._ 2
execute if predicate zombies_evolved:in_main_hand/has_armor/type/chestplate run scoreboard players set #_slot zev._ 3
execute if predicate zombies_evolved:in_main_hand/has_armor/type/helmet run scoreboard players set #_slot zev._ 4

# Evaluates the tier of the new item
function zombies_evolved:jacky/equip_if_better/eval_tier
scoreboard players operation #_new_tier zev._ = #_tier zev._

# Stores the old item for future reference
execute if score #_slot zev._ matches 0 run data modify storage zombies_evolved:_temp root.old_item set from storage zombies_evolved:_temp root.zombie.HandItems[0]
execute if score #_slot zev._ matches 1 run data modify storage zombies_evolved:_temp root.old_item set from storage zombies_evolved:_temp root.zombie.ArmorItems[0]
execute if score #_slot zev._ matches 2 run data modify storage zombies_evolved:_temp root.old_item set from storage zombies_evolved:_temp root.zombie.ArmorItems[1]
execute if score #_slot zev._ matches 3 run data modify storage zombies_evolved:_temp root.old_item set from storage zombies_evolved:_temp root.zombie.ArmorItems[2]
execute if score #_slot zev._ matches 4 run data modify storage zombies_evolved:_temp root.old_item set from storage zombies_evolved:_temp root.zombie.ArmorItems[3]

# Gives the old item to the armor stand for evaluation
data modify entity @s HandItems[0] set from storage zombies_evolved:_temp root.old_item

# Evaluates the tier of the old item
function zombies_evolved:jacky/equip_if_better/eval_tier
scoreboard players operation #_old_tier zev._ = #_tier zev._

# Destroys the armor stand
kill @s
