## AUTHOR: Picarrow

scoreboard players set $min rdm._ 0
execute store result score $max rdm._ if data storage zombies_evolved:_temp root.zombie.Inventory[]
scoreboard players remove $max rdm._ 1
function random:true_uniform

# Store item data
execute if score $out rdm._ matches 0 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[0]
execute if score $out rdm._ matches 1 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[1]
execute if score $out rdm._ matches 2 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[2]
execute if score $out rdm._ matches 3 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[3]
execute if score $out rdm._ matches 4 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[4]
execute if score $out rdm._ matches 5 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[5]
execute if score $out rdm._ matches 6 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[6]
execute if score $out rdm._ matches 7 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[7]
execute if score $out rdm._ matches 8 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[8]
execute if score $out rdm._ matches 9 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[9]
execute if score $out rdm._ matches 10 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[10]
execute if score $out rdm._ matches 11 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[11]
execute if score $out rdm._ matches 12 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[12]
execute if score $out rdm._ matches 13 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[13]
execute if score $out rdm._ matches 14 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[14]
execute if score $out rdm._ matches 15 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[15]
execute if score $out rdm._ matches 16 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[16]
execute if score $out rdm._ matches 17 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[17]
execute if score $out rdm._ matches 18 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[18]
execute if score $out rdm._ matches 19 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[19]
execute if score $out rdm._ matches 20 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[20]
execute if score $out rdm._ matches 21 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[21]
execute if score $out rdm._ matches 22 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[22]
execute if score $out rdm._ matches 23 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[23]
execute if score $out rdm._ matches 24 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[24]
execute if score $out rdm._ matches 25 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[25]
execute if score $out rdm._ matches 26 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[26]
execute if score $out rdm._ matches 27 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[27]
execute if score $out rdm._ matches 28 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[28]
execute if score $out rdm._ matches 29 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[29]
execute if score $out rdm._ matches 30 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[30]
execute if score $out rdm._ matches 31 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[31]
execute if score $out rdm._ matches 32 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[32]
execute if score $out rdm._ matches 33 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[33]
execute if score $out rdm._ matches 34 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[34]
execute if score $out rdm._ matches 35 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.zombie.Inventory[35]

# Determine item slot
execute store result score #_slot zev._ run data get storage zombies_evolved:_temp root.pilfered_item.Slot

# Delete item from slot
execute if score #_slot zev._ matches 0 run item replace entity @s hotbar.0 with minecraft:air
execute if score #_slot zev._ matches 1 run item replace entity @s hotbar.1 with minecraft:air
execute if score #_slot zev._ matches 2 run item replace entity @s hotbar.2 with minecraft:air
execute if score #_slot zev._ matches 3 run item replace entity @s hotbar.3 with minecraft:air
execute if score #_slot zev._ matches 4 run item replace entity @s hotbar.4 with minecraft:air
execute if score #_slot zev._ matches 5 run item replace entity @s hotbar.5 with minecraft:air
execute if score #_slot zev._ matches 6 run item replace entity @s hotbar.6 with minecraft:air
execute if score #_slot zev._ matches 7 run item replace entity @s hotbar.7 with minecraft:air
execute if score #_slot zev._ matches 8 run item replace entity @s hotbar.8 with minecraft:air
execute if score #_slot zev._ matches 9 run item replace entity @s inventory.0 with minecraft:air
execute if score #_slot zev._ matches 10 run item replace entity @s inventory.1 with minecraft:air
execute if score #_slot zev._ matches 11 run item replace entity @s inventory.2 with minecraft:air
execute if score #_slot zev._ matches 12 run item replace entity @s inventory.3 with minecraft:air
execute if score #_slot zev._ matches 13 run item replace entity @s inventory.4 with minecraft:air
execute if score #_slot zev._ matches 14 run item replace entity @s inventory.5 with minecraft:air
execute if score #_slot zev._ matches 15 run item replace entity @s inventory.6 with minecraft:air
execute if score #_slot zev._ matches 16 run item replace entity @s inventory.7 with minecraft:air
execute if score #_slot zev._ matches 17 run item replace entity @s inventory.8 with minecraft:air
execute if score #_slot zev._ matches 18 run item replace entity @s inventory.9 with minecraft:air
execute if score #_slot zev._ matches 19 run item replace entity @s inventory.10 with minecraft:air
execute if score #_slot zev._ matches 20 run item replace entity @s inventory.11 with minecraft:air
execute if score #_slot zev._ matches 21 run item replace entity @s inventory.12 with minecraft:air
execute if score #_slot zev._ matches 22 run item replace entity @s inventory.13 with minecraft:air
execute if score #_slot zev._ matches 23 run item replace entity @s inventory.14 with minecraft:air
execute if score #_slot zev._ matches 24 run item replace entity @s inventory.15 with minecraft:air
execute if score #_slot zev._ matches 25 run item replace entity @s inventory.16 with minecraft:air
execute if score #_slot zev._ matches 26 run item replace entity @s inventory.17 with minecraft:air
execute if score #_slot zev._ matches 27 run item replace entity @s inventory.18 with minecraft:air
execute if score #_slot zev._ matches 28 run item replace entity @s inventory.19 with minecraft:air
execute if score #_slot zev._ matches 29 run item replace entity @s inventory.20 with minecraft:air
execute if score #_slot zev._ matches 30 run item replace entity @s inventory.21 with minecraft:air
execute if score #_slot zev._ matches 31 run item replace entity @s inventory.22 with minecraft:air
execute if score #_slot zev._ matches 32 run item replace entity @s inventory.23 with minecraft:air
execute if score #_slot zev._ matches 33 run item replace entity @s inventory.24 with minecraft:air
execute if score #_slot zev._ matches 34 run item replace entity @s inventory.25 with minecraft:air
execute if score #_slot zev._ matches 35 run item replace entity @s inventory.26 with minecraft:air
