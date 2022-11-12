## AUTHOR: Picarrow

scoreboard players set $min rdm.random 0
execute store result score $max rdm.random if data storage zombies_evolved:_pilfer.0 Temp.Inventory[]
scoreboard players remove $max rdm.random 1
function random:true_uniform

# Store item data
execute if score $out rdm.random matches 0 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[0]
execute if score $out rdm.random matches 1 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[1]
execute if score $out rdm.random matches 2 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[2]
execute if score $out rdm.random matches 3 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[3]
execute if score $out rdm.random matches 4 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[4]
execute if score $out rdm.random matches 5 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[5]
execute if score $out rdm.random matches 6 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[6]
execute if score $out rdm.random matches 7 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[7]
execute if score $out rdm.random matches 8 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[8]
execute if score $out rdm.random matches 9 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[9]
execute if score $out rdm.random matches 10 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[10]
execute if score $out rdm.random matches 11 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[11]
execute if score $out rdm.random matches 12 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[12]
execute if score $out rdm.random matches 13 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[13]
execute if score $out rdm.random matches 14 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[14]
execute if score $out rdm.random matches 15 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[15]
execute if score $out rdm.random matches 16 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[16]
execute if score $out rdm.random matches 17 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[17]
execute if score $out rdm.random matches 18 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[18]
execute if score $out rdm.random matches 19 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[19]
execute if score $out rdm.random matches 20 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[20]
execute if score $out rdm.random matches 21 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[21]
execute if score $out rdm.random matches 22 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[22]
execute if score $out rdm.random matches 23 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[23]
execute if score $out rdm.random matches 24 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[24]
execute if score $out rdm.random matches 25 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[25]
execute if score $out rdm.random matches 26 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[26]
execute if score $out rdm.random matches 27 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[27]
execute if score $out rdm.random matches 28 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[28]
execute if score $out rdm.random matches 29 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[29]
execute if score $out rdm.random matches 30 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[30]
execute if score $out rdm.random matches 31 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[31]
execute if score $out rdm.random matches 32 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[32]
execute if score $out rdm.random matches 33 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[33]
execute if score $out rdm.random matches 34 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[34]
execute if score $out rdm.random matches 35 run data modify storage zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage zombies_evolved:_pilfer.0 Temp.Inventory[35]

# Determine item slot
execute store result score #slot zev._pilfer.0 run data get storage zombies_evolved:_pilfer.0 PilferedItemData.Item.Slot
data remove storage zombies_evolved:_pilfer.0 PilferedItemData.Item.Slot

# Delete item from slot
execute if score #slot zev._pilfer.0 matches 0 run item replace entity @s hotbar.0 with minecraft:air
execute if score #slot zev._pilfer.0 matches 1 run item replace entity @s hotbar.1 with minecraft:air
execute if score #slot zev._pilfer.0 matches 2 run item replace entity @s hotbar.2 with minecraft:air
execute if score #slot zev._pilfer.0 matches 3 run item replace entity @s hotbar.3 with minecraft:air
execute if score #slot zev._pilfer.0 matches 4 run item replace entity @s hotbar.4 with minecraft:air
execute if score #slot zev._pilfer.0 matches 5 run item replace entity @s hotbar.5 with minecraft:air
execute if score #slot zev._pilfer.0 matches 6 run item replace entity @s hotbar.6 with minecraft:air
execute if score #slot zev._pilfer.0 matches 7 run item replace entity @s hotbar.7 with minecraft:air
execute if score #slot zev._pilfer.0 matches 8 run item replace entity @s hotbar.8 with minecraft:air
execute if score #slot zev._pilfer.0 matches 9 run item replace entity @s inventory.0 with minecraft:air
execute if score #slot zev._pilfer.0 matches 10 run item replace entity @s inventory.1 with minecraft:air
execute if score #slot zev._pilfer.0 matches 11 run item replace entity @s inventory.2 with minecraft:air
execute if score #slot zev._pilfer.0 matches 12 run item replace entity @s inventory.3 with minecraft:air
execute if score #slot zev._pilfer.0 matches 13 run item replace entity @s inventory.4 with minecraft:air
execute if score #slot zev._pilfer.0 matches 14 run item replace entity @s inventory.5 with minecraft:air
execute if score #slot zev._pilfer.0 matches 15 run item replace entity @s inventory.6 with minecraft:air
execute if score #slot zev._pilfer.0 matches 16 run item replace entity @s inventory.7 with minecraft:air
execute if score #slot zev._pilfer.0 matches 17 run item replace entity @s inventory.8 with minecraft:air
execute if score #slot zev._pilfer.0 matches 18 run item replace entity @s inventory.9 with minecraft:air
execute if score #slot zev._pilfer.0 matches 19 run item replace entity @s inventory.10 with minecraft:air
execute if score #slot zev._pilfer.0 matches 20 run item replace entity @s inventory.11 with minecraft:air
execute if score #slot zev._pilfer.0 matches 21 run item replace entity @s inventory.12 with minecraft:air
execute if score #slot zev._pilfer.0 matches 22 run item replace entity @s inventory.13 with minecraft:air
execute if score #slot zev._pilfer.0 matches 23 run item replace entity @s inventory.14 with minecraft:air
execute if score #slot zev._pilfer.0 matches 24 run item replace entity @s inventory.15 with minecraft:air
execute if score #slot zev._pilfer.0 matches 25 run item replace entity @s inventory.16 with minecraft:air
execute if score #slot zev._pilfer.0 matches 26 run item replace entity @s inventory.17 with minecraft:air
execute if score #slot zev._pilfer.0 matches 27 run item replace entity @s inventory.18 with minecraft:air
execute if score #slot zev._pilfer.0 matches 28 run item replace entity @s inventory.19 with minecraft:air
execute if score #slot zev._pilfer.0 matches 29 run item replace entity @s inventory.20 with minecraft:air
execute if score #slot zev._pilfer.0 matches 30 run item replace entity @s inventory.21 with minecraft:air
execute if score #slot zev._pilfer.0 matches 31 run item replace entity @s inventory.22 with minecraft:air
execute if score #slot zev._pilfer.0 matches 32 run item replace entity @s inventory.23 with minecraft:air
execute if score #slot zev._pilfer.0 matches 33 run item replace entity @s inventory.24 with minecraft:air
execute if score #slot zev._pilfer.0 matches 34 run item replace entity @s inventory.25 with minecraft:air
execute if score #slot zev._pilfer.0 matches 35 run item replace entity @s inventory.26 with minecraft:air
