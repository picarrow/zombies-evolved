## AUTHOR : Picarrow
##
## INPUT  : executor -> player who has an attacker

# Takes an item from the player, storing it in a storage
function zombies_evolved:jacky/pilfer/take_item

# Attempts to equip the pilfered item, if there is one
execute if data storage zombies_evolved:_temp root.pilfered_item run function zombies_evolved:jacky/pilfer/equip_if_better

# Drops an item, if there is an extra
execute if data storage zombies_evolved:_temp root.item_to_drop on attacker at @s run function zombies_evolved:jacky/pilfer/drop_item

# Destroys temp storage
data remove storage zombies_evolved:_temp root
