## AUTHOR : Picarrow

# Place the new item into the slot it belongs to
data modify storage mob_equip:data _.func.equip_if_better.temp.equip_args set value {components:{},count:1b}
data modify storage mob_equip:data _.func.equip_if_better.temp.equip_args merge from storage mob_equip:data _.func.equip_if_better.in.new_item
function mob_equip:equip_if_better/_2131 with storage mob_equip:data _.func.equip_if_better.temp
function mob_equip:equip_if_better/_2132 with storage mob_equip:data _.func.equip_if_better.temp.equip_args

# Set the slot with the new item to always drop
$data modify entity @s drop_chances.$(slot) set value 2f

# Prohibit the entity from despawning in the future
data modify entity @s PersistenceRequired set value 1b

# Inform the caller the new item is equipped
data modify storage mob_equip:data _.func.equip_if_better.out.equipped set value {}

# Store the old item into the output, if there is one
execute if data storage mob_equip:data _.func.equip_if_better.temp.eval.id run data modify storage mob_equip:data _.func.equip_if_better.out.old_item set from storage mob_equip:data _.func.equip_if_better.temp.eval

# ...
return 1
