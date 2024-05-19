## AUTHOR : Picarrow

# Set the new item to be evaluated
data modify storage mob_equip:data _.func.equip_if_better.temp.item_to_eval set from storage mob_equip:data _.func.equip_if_better.in.new_item

# Determine properties of the new item
execute store result score #_tier_of_new meq._ run function mob_equip:equip_if_better/eval_tier/_
execute store result score #_component_count_of_new meq._ run data get storage mob_equip:data _.func.equip_if_better.temp.item_to_eval.components
execute store result score #_damage_of_new meq._ run data get storage mob_equip:data _.func.equip_if_better.temp.item_to_eval.components."minecraft:damage"

# Set the old item to be evaluated
execute store result storage mob_equip:data _.func.equip_if_better.temp.desired_slot int 1 run scoreboard players get #_desired_slot meq._
function mob_equip:equip_if_better/_31 with storage mob_equip:data _.func.equip_if_better.temp
function mob_equip:equip_if_better/_32 with storage mob_equip:data _.func.equip_if_better.temp

# Determine properties of the old item
execute store result score #_tier_of_old meq._ run function mob_equip:equip_if_better/eval_tier/_
execute store result score #_component_count_of_old meq._ run data get storage mob_equip:data _.func.equip_if_better.temp.item_to_eval.components
execute store result score #_damage_of_old meq._ run data get storage mob_equip:data _.func.equip_if_better.temp.item_to_eval.components."minecraft:damage"

# Equip the new item, if it's better than the old one, else try to equip the new
# item into the mainhand
execute if function mob_equip:equip_if_better/is_better/_ run return run function mob_equip:equip_if_better/equip/_
execute unless score #_desired_slot meq._ matches 5 unless data storage mob_equip:data _.func.equip_if_better.in.ignore_slots.mainhand run function mob_equip:equip_if_better/_33
