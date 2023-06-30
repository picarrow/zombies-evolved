## AUTHOR : Picarrow
##
## ENTCON : a player who has an attacker
## POSCON : inconsequential

# Stores an item from the player's inventory
function zombies_evolved:util/pilfer/take_item

# Attempts to equip the item, if present, onto the attacker
execute if data storage zombies_evolved:pilfer temp.stolen_item run function zombies_evolved:util/pilfer/equip_if_better

# Drops an item, if there is an extra
execute if data storage zombies_evolved:pilfer temp.item_to_drop on attacker at @s run function zombies_evolved:util/pilfer/drop_item

# Deletes the temp data
data remove storage zombies_evolved:pilfer temp
