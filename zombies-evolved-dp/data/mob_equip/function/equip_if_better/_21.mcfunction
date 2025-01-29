## AUTHOR : Picarrow

# ...
execute store result score #_is_ignoring_slot meq._ run function mob_equip:equip_if_better/_211 with storage mob_equip:data _.func.equip_if_better.temp
execute if score #_is_ignoring_slot meq._ matches 1 run return fail

# Set the new item to be evaluated and slot to be evaluated at
data modify storage mob_equip:data _.func.equip_if_better.temp.eval set from storage mob_equip:data _.func.equip_if_better.in.new_item
data modify storage mob_equip:data _.func.equip_if_better.temp.eval.slot set from storage mob_equip:data _.func.equip_if_better.temp.slot

# Evaluate the new item
execute store result score #_tier_of_new meq._ run function mob_equip:equip_if_better/eval_tier/_
execute store result score #_component_count_of_new meq._ run data get storage mob_equip:data _.func.equip_if_better.temp.eval.components
execute if data storage mob_equip:data _.func.equip_if_better.temp.eval.components."minecraft:damage" run scoreboard players remove #_component_count_of_new meq._ 1
execute store result score #_damage_of_new meq._ run data get storage mob_equip:data _.func.equip_if_better.temp.eval.components."minecraft:damage"

# Store the ENTCON's NBT for efficient access
data modify storage mob_equip:data _.func.equip_if_better.temp.entity_equipment set from entity @s equipment

# Set the old item to be evaluated and slot to be evaluated at
data modify storage mob_equip:data _.func.equip_if_better.temp.eval set value {}
function mob_equip:equip_if_better/_212 with storage mob_equip:data _.func.equip_if_better.temp
data modify storage mob_equip:data _.func.equip_if_better.temp.eval.slot set from storage mob_equip:data _.func.equip_if_better.temp.slot

# Evaluate the old item
execute store result score #_tier_of_old meq._ run function mob_equip:equip_if_better/eval_tier/_
execute store result score #_component_count_of_old meq._ run data get storage mob_equip:data _.func.equip_if_better.temp.eval.components
execute if data storage mob_equip:data _.func.equip_if_better.temp.eval.components."minecraft:damage" run scoreboard players remove #_component_count_of_old meq._ 1
execute store result score #_damage_of_old meq._ run data get storage mob_equip:data _.func.equip_if_better.temp.eval.components."minecraft:damage"

# ...
execute if function mob_equip:equip_if_better/is_better/_ at @s run return run function mob_equip:equip_if_better/_213 with storage mob_equip:data _.func.equip_if_better.temp
