## AUTHOR : Picarrow
##        :
## ENTCON : A player who has an attacker.
## POSCON : ---
##  INPUT : ---
## OUTPUT : ---
## EFFECT : ?

# Store the ENTCON's NBT for efficient access.
data modify storage zombies_evolved:data _.func.ability.pilfer.temp.player set from entity @s {}

# Store the ENTCON's equipped items into a list called grab bag.
data modify storage zombies_evolved:data _.func.ability.pilfer.temp.grab_bag append from storage zombies_evolved:data _.func.ability.pilfer.temp.player.Inventory[{Slot:100b}]
data modify storage zombies_evolved:data _.func.ability.pilfer.temp.grab_bag append from storage zombies_evolved:data _.func.ability.pilfer.temp.player.Inventory[{Slot:101b}]
data modify storage zombies_evolved:data _.func.ability.pilfer.temp.grab_bag append from storage zombies_evolved:data _.func.ability.pilfer.temp.player.Inventory[{Slot:102b}]
data modify storage zombies_evolved:data _.func.ability.pilfer.temp.grab_bag append from storage zombies_evolved:data _.func.ability.pilfer.temp.player.Inventory[{Slot:103b}]
data modify storage zombies_evolved:data _.func.ability.pilfer.temp.grab_bag append from storage zombies_evolved:data _.func.ability.pilfer.temp.player.SelectedItem
data modify storage zombies_evolved:data _.func.ability.pilfer.temp.grab_bag append from storage zombies_evolved:data _.func.ability.pilfer.temp.player.Inventory[{Slot:-106b}]

# Store an item to steal from the ENTCON's inventory, preferring items from the
# grab bag.
function zombies_evolved:_ability/pilfer/_1

# Equip the stolen item, if there is one, onto the attacker, and drop the discarded
# item.
execute on attacker run function zombies_evolved:_ability/pilfer/_2

# Delete the temp data.
data remove storage zombies_evolved:data _.func.ability.pilfer.temp
