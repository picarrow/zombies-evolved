## AUTHOR : Picarrow

# Switches the desired slot to the main hand
scoreboard players set #_slot meq._ 0

# Armor has a tier of 0 in the main hand
scoreboard players set #_new_tier meq._ 0

# Evaluates the worth of the old item
data modify entity @s HandItems[0] set from storage mob_equip:equip_if_better temp.entity.HandItems[0]
function mob_equip:equip_if_better/eval
scoreboard players operation #_old_tier meq._ = #_tier meq._
scoreboard players operation #_old_custom_tags meq._ = #_custom_tags meq._
scoreboard players operation #_old_damage meq._ = #_damage meq._

# Equips the input item if it's better
function mob_equip:equip_if_better/check_if_better
execute if score #_is_better meq._ matches 1 run function mob_equip:equip_if_better/equip
