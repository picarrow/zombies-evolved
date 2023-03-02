## AUTHOR: Picarrow
## INPUT: executor (player who has an attacker)

# Takes an item from the player
# Storing it in a storage
function zombies_evolved:jacky/pilfer/take_item

# If there is an item, drops the item onto the ground
execute if data storage zombies_evolved:0 PilferedItemData on attacker at @s run function zombies_evolved:jacky/pilfer/drop_item

# Destroys temp storage
data remove storage zombies_evolved:0 Temp
data remove storage zombies_evolved:0 PilferedItemData
