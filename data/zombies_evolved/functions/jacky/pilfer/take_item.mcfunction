## AUTHOR : Picarrow

# Places the player's equipped items into a list
data modify storage zombies_evolved:_temp root.zombie set from entity @s {}
data modify storage zombies_evolved:_temp root.grab_bag append from storage zombies_evolved:_temp root.zombie.Inventory[{Slot:100b}]
data modify storage zombies_evolved:_temp root.grab_bag append from storage zombies_evolved:_temp root.zombie.Inventory[{Slot:101b}]
data modify storage zombies_evolved:_temp root.grab_bag append from storage zombies_evolved:_temp root.zombie.Inventory[{Slot:102b}]
data modify storage zombies_evolved:_temp root.grab_bag append from storage zombies_evolved:_temp root.zombie.Inventory[{Slot:103b}]
data modify storage zombies_evolved:_temp root.grab_bag append from storage zombies_evolved:_temp root.zombie.Inventory[{Slot:-106b}]
data modify storage zombies_evolved:_temp root.grab_bag append from storage zombies_evolved:_temp root.zombie.SelectedItem

# If there are equipped items, take one randomly
execute if data storage zombies_evolved:_temp root.grab_bag run function zombies_evolved:jacky/pilfer/take_item_1

# If none, take a random unequipped item
execute unless data storage zombies_evolved:_temp root.grab_bag if data storage zombies_evolved:_temp root.zombie.Inventory[0] run function zombies_evolved:jacky/pilfer/take_item_2
