execute if data entity @s {Inventory:[{Slot:103b}]} unless data entity @s {Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin"}]} run function picarrow.hardcore_zombies:_private/zombies/jacky/abilities/knock_helmet
execute unless data entity @s {Inventory:[{Slot:103b}]} run item replace entity @s armor.head with minecraft:carved_pumpkin
