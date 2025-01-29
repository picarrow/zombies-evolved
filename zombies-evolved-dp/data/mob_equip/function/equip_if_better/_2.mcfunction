## AUTHOR : Picarrow

# ...
execute unless data storage mob_equip:data _.func.equip_if_better.temp{slot:"mainhand"} if function mob_equip:equip_if_better/_21 run return fail

# ...
execute if data storage mob_equip:data _.func.equip_if_better.in.ignore_slots.mainhand run return fail

# Set the new item to be evaluated
data modify storage mob_equip:data _.func.equip_if_better.temp.eval set value {}
data modify storage mob_equip:data _.func.equip_if_better.temp.eval set from storage mob_equip:data _.func.equip_if_better.in.new_item

# Evaluate the new item
execute store result score #_tier_of_new meq._ run function mob_equip:equip_if_better/eval_tier_by_mainhand/_
execute store result score #_component_count_of_new meq._ run data get storage mob_equip:data _.func.equip_if_better.temp.eval.components
execute if data storage mob_equip:data _.func.equip_if_better.temp.eval.components."minecraft:damage" run scoreboard players remove #_component_count_of_new meq._ 1
execute store result score #_damage_of_new meq._ run data get storage mob_equip:data _.func.equip_if_better.temp.eval.components."minecraft:damage"

# Store the ENTCON's NBT for efficient access, if not stored already
execute unless data storage mob_equip:data _.func.equip_if_better.temp.entity_equipment run data modify storage mob_equip:data _.func.equip_if_better.temp.entity_equipment set from entity @s equipment

# Set the old item to be evaluated and slot to be evaluated at
data modify storage mob_equip:data _.func.equip_if_better.temp.eval set value {}
data modify storage mob_equip:data _.func.equip_if_better.temp.eval set from storage mob_equip:data _.func.equip_if_better.temp.entity_equipment.mainhand

# Evaluate the old item
execute store result score #_tier_of_old meq._ run function mob_equip:equip_if_better/eval_tier_by_mainhand/_
execute store result score #_component_count_of_old meq._ run data get storage mob_equip:data _.func.equip_if_better.temp.eval.components
execute if data storage mob_equip:data _.func.equip_if_better.temp.eval.components."minecraft:damage" run scoreboard players remove #_component_count_of_old meq._ 1
execute store result score #_damage_of_old meq._ run data get storage mob_equip:data _.func.equip_if_better.temp.eval.components."minecraft:damage"

# ...
execute if function mob_equip:equip_if_better/is_better/_ at @s run function mob_equip:equip_if_better/_22
