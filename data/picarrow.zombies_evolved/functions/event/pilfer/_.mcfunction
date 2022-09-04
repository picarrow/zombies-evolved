# Allocate local resources
scoreboard objectives add picarrow.ze._pilfer.0 dummy

# Remove an item from the player after storing its data in a storage
execute as @a[tag=picarrow.ehm.player,distance=..5,limit=1] at @s run function picarrow.zombies_evolved:event/pilfer/steal_item

# Drop the item onto the ground
execute if data storage picarrow.zombies_evolved:_pilfer.0 PilferedItemData run function picarrow.zombies_evolved:event/pilfer/drop_item

# Destroy local resources
scoreboard objectives remove picarrow.ze._pilfer.0
data remove storage picarrow.zombies_evolved:_pilfer.0 Temp
data remove storage picarrow.zombies_evolved:_pilfer.0 PilferedItemData

#tellraw @a {"storage":"picarrow.zombies_evolved:_pilfer.0","nbt":"PilferedItem"}
#tellraw @a {"storage":"picarrow.zombies_evolved:_pilfer.0","nbt":"{}"}
#tellraw @a {"score":{"name":"#slot","objective":"picarrow.ze._pilfer.0"}}
