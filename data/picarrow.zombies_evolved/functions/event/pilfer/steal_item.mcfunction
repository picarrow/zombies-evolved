# Store equipped items into a list
data modify storage picarrow.zombies_evolved:_pilfer.0 Temp set from entity @s {}
data modify storage picarrow.zombies_evolved:_pilfer.0 Temp.GrabBag append from storage picarrow.zombies_evolved:_pilfer.0 Temp.Inventory[{Slot:100b}]
data modify storage picarrow.zombies_evolved:_pilfer.0 Temp.GrabBag append from storage picarrow.zombies_evolved:_pilfer.0 Temp.Inventory[{Slot:101b}]
data modify storage picarrow.zombies_evolved:_pilfer.0 Temp.GrabBag append from storage picarrow.zombies_evolved:_pilfer.0 Temp.Inventory[{Slot:102b}]
data modify storage picarrow.zombies_evolved:_pilfer.0 Temp.GrabBag append from storage picarrow.zombies_evolved:_pilfer.0 Temp.Inventory[{Slot:103b}]
data modify storage picarrow.zombies_evolved:_pilfer.0 Temp.GrabBag append from storage picarrow.zombies_evolved:_pilfer.0 Temp.Inventory[{Slot:-106b}]
data modify storage picarrow.zombies_evolved:_pilfer.0 Temp.GrabBag append from storage picarrow.zombies_evolved:_pilfer.0 Temp.SelectedItem

# If there are equipped items, pick one randomly
execute if data storage picarrow.zombies_evolved:_pilfer.0 Temp.GrabBag run function picarrow.zombies_evolved:event/pilfer/take_equipped

# If none, pick a random unequipped item
execute unless data storage picarrow.zombies_evolved:_pilfer.0 Temp.GrabBag if data storage picarrow.zombies_evolved:_pilfer.0 Temp.Inventory[0] run function picarrow.zombies_evolved:event/pilfer/take_unequipped
