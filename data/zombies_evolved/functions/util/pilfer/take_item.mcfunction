## AUTHOR : Picarrow

# Stores the player's NBT for efficient access
data modify storage zombies_evolved:pilfer temp.player set from entity @s {}

# Places the player's equipped items into a list
data modify storage zombies_evolved:pilfer temp.grab_bag append from storage zombies_evolved:pilfer temp.player.SelectedItem
data modify storage zombies_evolved:pilfer temp.grab_bag append from storage zombies_evolved:pilfer temp.player.Inventory[{Slot:-106b}]
data modify storage zombies_evolved:pilfer temp.grab_bag append from storage zombies_evolved:pilfer temp.player.Inventory[{Slot:100b}]
data modify storage zombies_evolved:pilfer temp.grab_bag append from storage zombies_evolved:pilfer temp.player.Inventory[{Slot:101b}]
data modify storage zombies_evolved:pilfer temp.grab_bag append from storage zombies_evolved:pilfer temp.player.Inventory[{Slot:102b}]
data modify storage zombies_evolved:pilfer temp.grab_bag append from storage zombies_evolved:pilfer temp.player.Inventory[{Slot:103b}]

# If there are equipped items, take one randomly
execute if data storage zombies_evolved:pilfer temp.grab_bag run function zombies_evolved:util/pilfer/take_item_equipped

# If none, take a random unequipped item
execute unless data storage zombies_evolved:pilfer temp.grab_bag if data storage zombies_evolved:pilfer temp.player.Inventory[0] run function zombies_evolved:util/pilfer/take_item_unequipped
