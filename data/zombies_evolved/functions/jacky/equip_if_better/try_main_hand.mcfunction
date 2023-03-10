## AUTHOR : Picarrow

# Switches the desired slot to the main hand
scoreboard players set #_slot zev._ 0

# Armor has a tier of 0 in the main hand
scoreboard players set #_new_tier zev._ 0

# Evaluates the worth of the old item
data modify entity @s HandItems[0] set from storage zombies_evolved:_temp root.entity.HandItems[0]
function zombies_evolved:jacky/equip_if_better/eval
scoreboard players operation #_old_tier zev._ = #_tier zev._
scoreboard players operation #_old_custom_tags zev._ = #_custom_tags zev._
scoreboard players operation #_old_damage zev._ = #_damage zev._

# Equips the item if it's better
function zombies_evolved:jacky/equip_if_better/check_if_better
execute if score #_is_better zev._ matches 1 run function zombies_evolved:jacky/equip_if_better/equip
