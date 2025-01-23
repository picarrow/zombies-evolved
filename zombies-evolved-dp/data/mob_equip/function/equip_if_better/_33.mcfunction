## AUTHOR : Picarrow

# Set the desired slot to the mainhand
scoreboard players set #_desired_slot meq._ 5

# Set the tier of the new armor to 1 as the desired slot is now the mainhand
scoreboard players set #_tier_of_new meq._ 1

# Set the old item to be evaluated
data modify storage mob_equip:data _.func.equip_if_better.temp.item_to_eval set value {}
data modify storage mob_equip:data _.func.equip_if_better.temp.entity.item_to_eval set from storage mob_equip:data _.func.equip_if_better.temp.entity.equipment.mainhand

# Determine properties of the old item
execute store result score #_tier_of_old meq._ run function mob_equip:equip_if_better/eval_tier/_
execute store result score #_component_count_of_old meq._ run data get storage mob_equip:data _.func.equip_if_better.temp.item_to_eval.components
execute store result score #_damage_of_old meq._ run data get storage mob_equip:data _.func.equip_if_better.temp.item_to_eval.components."minecraft:damage"

# Equip the input item, if it's better than the old one
execute if function mob_equip:equip_if_better/is_better/_ run function mob_equip:equip_if_better/equip/_
