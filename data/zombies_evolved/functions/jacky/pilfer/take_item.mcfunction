## AUTHOR: Picarrow

# Places the player's equipped items into a list
data modify storage zombies_evolved:0 Temp set from entity @s {}
data modify storage zombies_evolved:0 Temp.GrabBag append from storage zombies_evolved:0 Temp.Inventory[{Slot:100b}]
data modify storage zombies_evolved:0 Temp.GrabBag append from storage zombies_evolved:0 Temp.Inventory[{Slot:101b}]
data modify storage zombies_evolved:0 Temp.GrabBag append from storage zombies_evolved:0 Temp.Inventory[{Slot:102b}]
data modify storage zombies_evolved:0 Temp.GrabBag append from storage zombies_evolved:0 Temp.Inventory[{Slot:103b}]
data modify storage zombies_evolved:0 Temp.GrabBag append from storage zombies_evolved:0 Temp.Inventory[{Slot:-106b}]
data modify storage zombies_evolved:0 Temp.GrabBag append from storage zombies_evolved:0 Temp.SelectedItem

# If there are equipped items, take one randomly
execute if data storage zombies_evolved:0 Temp.GrabBag run function zombies_evolved:jacky/pilfer/take_equipped

# If none, take a random unequipped item
execute unless data storage zombies_evolved:0 Temp.GrabBag if data storage zombies_evolved:0 Temp.Inventory[0] run function zombies_evolved:jacky/pilfer/take_unequipped
