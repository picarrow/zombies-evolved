## AUTHOR : Picarrow

# Look to steal an unequipped item from the ENTCON, if there aren't any grab-bag
# contents but there are inventory contents.
execute unless data storage zombies_evolved:data _.func.ability.pilfer.temp.grab_bag run return run execute if data storage zombies_evolved:data _.func.ability.pilfer.temp.player.Inventory[0] run function zombies_evolved:_ability/pilfer/_11

# Choose a random grab-bag index.
execute store result score #_max_index zev._ if data storage zombies_evolved:data _.func.ability.pilfer.temp.grab_bag[]
execute store result storage zombies_evolved:data _.func.ability.pilfer.temp.max_index int 1 run scoreboard players remove #_max_index zev._ 1
execute store result storage zombies_evolved:data _.func.ability.pilfer.temp.index byte 1 run function zombies_evolved:_ability/pilfer/get_random_index/_ with storage zombies_evolved:data _.func.ability.pilfer.temp

# Store the item at the chosen grab-bag index and the corresponding inventory slot
# of the item.
execute store result storage zombies_evolved:data _.func.ability.pilfer.temp.slot byte 1 run function zombies_evolved:_ability/pilfer/_12 with storage zombies_evolved:data _.func.ability.pilfer.temp

# Store the corresponding slot alias of the item.
function zombies_evolved:_ability/pilfer/get_slot_alias/_ with storage zombies_evolved:data _.func.ability.pilfer.temp

# Delete the item in the chosen slot.
function zombies_evolved:_ability/pilfer/delete_from_inventory/_ with storage zombies_evolved:data _.func.ability.pilfer.temp
