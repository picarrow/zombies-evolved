## AUTHOR : Picarrow
##        :
## ENTCON : A non-player entity that supports head, chest, legs, feet, and mainhand
##          equipment.
## POSCON : ---
##  INPUT : {new_item.id, new_item.components, new_item.count, ignore_slots.mainhand,
##          ignore_slots.offhand, ignore_slots.head, ignore_slots.chest, ignore_slots.legs,
##          ignore_slots.feet}
## OUTPUT : {equipped, old_item}
## EFFECT : Emulates the equipping behavior of undead mobs in the game. Equips
##          the new item onto the executor if it is better than the existing (old)
##          item. Slots are ignored if specified in the input.

# Initialize the output, and clear the temp data
data modify storage mob_equip:data _.func.equip_if_better.out set value {}
data remove storage mob_equip:data _.func.equip_if_better.temp

# Determine the slot to be evaluated at
data modify storage mob_equip:data _.func.equip_if_better.temp.slot set from storage mob_equip:data _.func.equip_if_better.in.new_item.components."minecraft:equippable".slot
execute unless data storage mob_equip:data _.func.equip_if_better.temp.slot run function mob_equip:equip_if_better/_1 with storage mob_equip:data _.func.equip_if_better.in.new_item
execute unless data storage mob_equip:data _.func.equip_if_better.temp.slot run data modify storage mob_equip:data _.func.equip_if_better.temp.slot set value "mainhand"

# ...
function mob_equip:equip_if_better/_2

# Clear the temp data
data remove storage mob_equip:data _.func.equip_if_better.temp
