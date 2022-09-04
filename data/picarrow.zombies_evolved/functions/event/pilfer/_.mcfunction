scoreboard objectives add picarrow.ze._pilfer.0 dummy

data modify storage picarrow.zombies_evolved:_pilfer.0 Temp set from entity @s {}
data modify storage picarrow.zombies_evolved:_pilfer.0 GrabBag append from storage picarrow.zombies_evolved:_pilfer.0 Temp.Inventory[{Slot:100b}]
data modify storage picarrow.zombies_evolved:_pilfer.0 GrabBag append from storage picarrow.zombies_evolved:_pilfer.0 Temp.Inventory[{Slot:101b}]
data modify storage picarrow.zombies_evolved:_pilfer.0 GrabBag append from storage picarrow.zombies_evolved:_pilfer.0 Temp.Inventory[{Slot:102b}]
data modify storage picarrow.zombies_evolved:_pilfer.0 GrabBag append from storage picarrow.zombies_evolved:_pilfer.0 Temp.Inventory[{Slot:103b}]
data modify storage picarrow.zombies_evolved:_pilfer.0 GrabBag append from storage picarrow.zombies_evolved:_pilfer.0 Temp.Inventory[{Slot:-106b}]
data modify storage picarrow.zombies_evolved:_pilfer.0 GrabBag append from storage picarrow.zombies_evolved:_pilfer.0 Temp.SelectedItem

execute unless data storage picarrow.zombies_evolved:_pilfer.0 GrabBag if data storage picarrow.zombies_evolved:_pilfer.0 Temp.Inventory[0] run function picarrow.zombies_evolved:event/pilfer/take_unequipped
execute if data storage picarrow.zombies_evolved:_pilfer.0 GrabBag run function picarrow.zombies_evolved:event/pilfer/take_equipped
data remove storage picarrow.zombies_evolved:_pilfer.0 Temp

execute if data storage picarrow.zombies_evolved:_pilfer.0 PilferedItem run function picarrow.zombies_evolved:event/pilfer/drop_item

scoreboard objectives remove picarrow.ze._pilfer.0

#tellraw @a {"storage":"picarrow.zombies_evolved:_pilfer.0","nbt":"{}"}
