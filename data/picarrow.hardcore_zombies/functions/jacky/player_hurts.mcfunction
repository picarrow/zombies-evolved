### AUTHOR: Picarrow

# Puts a carved pumpkin on the player's head if they're not wearing a helmet.
execute as @s at @s unless data entity @s {Inventory:[{Slot:103b}]} run item replace entity @s armor.head with minecraft:carved_pumpkin
# Knocks the player's helmet off if they're wearing one.
execute as @s at @s if data entity @s {Inventory:[{Slot:103b}]} unless data entity @s {Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin"}]} run function picarrow.hardcore_zombies:knock_helmet
