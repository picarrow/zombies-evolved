## AUTHOR : Picarrow

# Evaluates the worth of the input item
function zombies_evolved:jacky/equip_if_better/eval
scoreboard players operation #_new_tier zev._ = #_tier zev._
scoreboard players operation #_new_custom_tags zev._ = #_custom_tags zev._
scoreboard players operation #_new_damage zev._ = #_damage zev._

# Evaluates the worth of the old item
execute if score #_slot zev._ matches 0 run data modify entity @s HandItems[0] set from storage zombies_evolved:_temp root.entity.HandItems[0]
execute if score #_slot zev._ matches 1 run data modify entity @s HandItems[0] set from storage zombies_evolved:_temp root.entity.ArmorItems[0]
execute if score #_slot zev._ matches 2 run data modify entity @s HandItems[0] set from storage zombies_evolved:_temp root.entity.ArmorItems[1]
execute if score #_slot zev._ matches 3 run data modify entity @s HandItems[0] set from storage zombies_evolved:_temp root.entity.ArmorItems[2]
execute if score #_slot zev._ matches 4 run data modify entity @s HandItems[0] set from storage zombies_evolved:_temp root.entity.ArmorItems[3]
function zombies_evolved:jacky/equip_if_better/eval
scoreboard players operation #_old_tier zev._ = #_tier zev._
scoreboard players operation #_old_custom_tags zev._ = #_custom_tags zev._
scoreboard players operation #_old_damage zev._ = #_damage zev._

# Equips the item if it's better
# Tries to equip the item in the main hand otherwise
function zombies_evolved:jacky/equip_if_better/check_if_better
execute if score #_is_better zev._ matches 0 if score #_slot zev._ matches 1..4 unless data storage zombies_evolved:equip_if_better in.ignore_slots{mainhand:1b} run function zombies_evolved:jacky/equip_if_better/try_main_hand
execute if score #_is_better zev._ matches 1 run function zombies_evolved:jacky/equip_if_better/equip

# Stores the replaced item into NBT 'out.item' if there is one
execute if data storage zombies_evolved:equip_if_better out{equipped:1b} store result score #_tags zev._ run data get storage zombies_evolved:_temp root.item_to_eval
execute if data storage zombies_evolved:equip_if_better out{equipped:1b} if score #_tags zev._ matches 1.. run data modify storage zombies_evolved:equip_if_better out.item set from storage zombies_evolved:_temp root.item_to_eval
