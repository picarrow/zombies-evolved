execute unless data entity @s {Inventory:[{Slot:103b}]} run item replace entity @s armor.head with minecraft:carved_pumpkin
execute if data entity @s {Inventory:[{Slot:103b}]} unless data entity @s {Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin"}]} run function picarrow.zombies_evolved:event/knock/drop_helmet
