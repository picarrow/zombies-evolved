## AUTHOR : Picarrow

# Choose a random inventory index.
execute store result score #_max_index zev._ if data storage zombies_evolved:data _.func.ability.pilfer.temp.player.Inventory[]
execute store result storage zombies_evolved:data _.func.ability.pilfer.temp.max_index int 1 run scoreboard players remove #_max_index zev._ 1
execute store result storage zombies_evolved:data _.func.ability.pilfer.temp.index byte 1 run function zombies_evolved:_ability/pilfer/get_random_index/_ with storage zombies_evolved:data _.func.ability.pilfer.temp

# Store the item at the chosen inventory index.
function zombies_evolved:_ability/pilfer/_111 with storage zombies_evolved:data _.func.ability.pilfer.temp

# Store the corresponding inventory slot of the item.
data modify storage zombies_evolved:data _.func.ability.pilfer.temp.slot set from storage zombies_evolved:data _.func.ability.pilfer.temp.item_to_steal.Slot

# Store the corresponding slot alias of the item.
function zombies_evolved:_ability/pilfer/get_slot_alias/_ with storage zombies_evolved:data _.func.ability.pilfer.temp

# Delete the item in the chosen slot.
function zombies_evolved:_ability/pilfer/delete_from_inventory/_ with storage zombies_evolved:data _.func.ability.pilfer.temp
