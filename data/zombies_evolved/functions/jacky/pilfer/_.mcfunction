## AUTHOR: Picarrow

# Takes an item from the player
# Storing it in a storage
execute as @a[tag=ehm.player,distance=..5,limit=1] at @s run function zombies_evolved:jacky/pilfer/take_item

# If there is an item, drops the item onto the ground
execute if data storage zombies_evolved:0 PilferedItemData run function zombies_evolved:jacky/pilfer/drop_item

# Destroys temp storage
data remove storage zombies_evolved:0 Temp
data remove storage zombies_evolved:0 PilferedItemData
