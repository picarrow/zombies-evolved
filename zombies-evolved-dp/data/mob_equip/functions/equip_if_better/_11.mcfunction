## AUTHOR : Picarrow

# Evaluates the worth of the input item
function mob_equip:equip_if_better/eval/_
scoreboard players operation #_new_tier meq._ = #_tier meq._
scoreboard players operation #_new_custom_tags meq._ = #_custom_tags meq._
scoreboard players operation #_new_damage meq._ = #_damage meq._

# Evaluates the worth of the old item
execute if score #_slot meq._ matches 0 run data modify entity @s HandItems[0] set from storage mob_equip:equip_if_better temp.entity.HandItems[0]
execute if score #_slot meq._ matches 1 run data modify entity @s HandItems[0] set from storage mob_equip:equip_if_better temp.entity.ArmorItems[0]
execute if score #_slot meq._ matches 2 run data modify entity @s HandItems[0] set from storage mob_equip:equip_if_better temp.entity.ArmorItems[1]
execute if score #_slot meq._ matches 3 run data modify entity @s HandItems[0] set from storage mob_equip:equip_if_better temp.entity.ArmorItems[2]
execute if score #_slot meq._ matches 4 run data modify entity @s HandItems[0] set from storage mob_equip:equip_if_better temp.entity.ArmorItems[3]
function mob_equip:equip_if_better/eval/_
scoreboard players operation #_old_tier meq._ = #_tier meq._
scoreboard players operation #_old_custom_tags meq._ = #_custom_tags meq._
scoreboard players operation #_old_damage meq._ = #_damage meq._

# Equips the input item if it's better
# Tries to equip the item in the main hand otherwise
function mob_equip:equip_if_better/check_if_better/_
execute if score #_is_better meq._ matches 0 if score #_slot meq._ matches 1..4 unless data storage mob_equip:equip_if_better root.in.ignore_slots.mainhand run function mob_equip:equip_if_better/_111
execute if score #_is_better meq._ matches 1 run function mob_equip:equip_if_better/equip/_

# Stores the replaced item into NBT 'out.item' if there is one
execute if data storage mob_equip:equip_if_better root.out{equipped:1b} store result score #_tags meq._ run data get storage mob_equip:equip_if_better temp.item_to_eval
execute if data storage mob_equip:equip_if_better root.out{equipped:1b} if score #_tags meq._ matches 1.. run data modify storage mob_equip:equip_if_better root.out.item set from storage mob_equip:equip_if_better temp.item_to_eval
