## AUTHOR: Picarrow

# Allocate local resources
scoreboard objectives add zev._pilfer.0 dummy

# Remove an item from the player after storing its data in a storage
execute as @a[tag=ehm.player,distance=..5,limit=1] at @s run function zombies_evolved:_pilfer/steal_item

# Drop the item onto the ground
execute if data storage zombies_evolved:_pilfer.0 PilferedItemData run function zombies_evolved:_pilfer/drop_item

# Destroy local resources
scoreboard objectives remove zev._pilfer.0
data remove storage zombies_evolved:_pilfer.0 Temp
data remove storage zombies_evolved:_pilfer.0 PilferedItemData

#tellraw @a {"storage":"zombies_evolved:_pilfer.0","nbt":"PilferedItem"}
#tellraw @a {"storage":"zombies_evolved:_pilfer.0","nbt":"{}"}
#tellraw @a {"score":{"name":"#slot","objective":"zev._pilfer.0"}}
