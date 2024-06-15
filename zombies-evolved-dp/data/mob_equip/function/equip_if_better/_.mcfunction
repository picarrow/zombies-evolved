## AUTHOR : Picarrow
##        :
## ENTCON : An entity that has NBT for HandItems and ArmorItems.
## POSCON : ---
##  INPUT : {new_item, ignore_slots.mainhand, ignore_slots.feet, ignore_slots.legs,
##          ignore_slots.chest, ignore_slots.head}
## OUTPUT : {equipped, old_item}
## EFFECT : Emulates the equipping behavior of undead mobs in the game. Equips
##          the new item onto the executor if it is better than the existing (old)
##          item. Slots are ignored if specified in the input.

# Initialize the output
data modify storage mob_equip:data _.func.equip_if_better.out set value {}

# Store the ENTCON's NBT for efficient access
data modify storage mob_equip:data _.func.equip_if_better.temp.entity set from entity @s

# Equip the new item into the ENTCON's mainhand, so it can be judged using slot
# checks and, most importantly, leverage data pack tags
data modify storage mob_equip:data _.func.equip_if_better.temp.equipped_item_with_defaults set value {components:{},count:1b}
data modify storage mob_equip:data _.func.equip_if_better.temp.equipped_item_with_defaults merge from storage mob_equip:data _.func.equip_if_better.in.new_item
function mob_equip:equip_if_better/_1 with storage mob_equip:data _.func.equip_if_better.temp.equipped_item_with_defaults

# Determine the slot the new item belongs to
execute store result score #_desired_slot meq._ run function mob_equip:equip_if_better/_2

# Proceed if the new item is equippable
execute if score #_desired_slot meq._ matches 1..5 run function mob_equip:equip_if_better/_3

# Merge the stored ENTCON's NBT back into the entity
data modify entity @s {} merge from storage mob_equip:data _.func.equip_if_better.temp.entity

# Delete the temp data
data remove storage mob_equip:data _.func.equip_if_better.temp
