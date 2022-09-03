scoreboard players set $min aeldrion.rdm.random 0
execute store result score $max aeldrion.rdm.random if data entity @s Inventory[]
scoreboard players remove $max aeldrion.rdm.random 1
function aeldrion.random:true_uniform

execute if score $out aeldrion.rdm.random matches 0 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[0]
execute if score $out aeldrion.rdm.random matches 1 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[1]
execute if score $out aeldrion.rdm.random matches 2 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[2]
execute if score $out aeldrion.rdm.random matches 3 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[3]
execute if score $out aeldrion.rdm.random matches 4 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[4]
execute if score $out aeldrion.rdm.random matches 5 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[5]
execute if score $out aeldrion.rdm.random matches 6 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[6]
execute if score $out aeldrion.rdm.random matches 7 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[7]
execute if score $out aeldrion.rdm.random matches 8 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[8]
execute if score $out aeldrion.rdm.random matches 9 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[9]
execute if score $out aeldrion.rdm.random matches 10 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[10]
execute if score $out aeldrion.rdm.random matches 11 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[11]
execute if score $out aeldrion.rdm.random matches 12 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[12]
execute if score $out aeldrion.rdm.random matches 13 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[13]
execute if score $out aeldrion.rdm.random matches 14 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[14]
execute if score $out aeldrion.rdm.random matches 15 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[15]
execute if score $out aeldrion.rdm.random matches 16 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[16]
execute if score $out aeldrion.rdm.random matches 17 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[17]
execute if score $out aeldrion.rdm.random matches 18 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[18]
execute if score $out aeldrion.rdm.random matches 19 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[19]
execute if score $out aeldrion.rdm.random matches 20 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[20]
execute if score $out aeldrion.rdm.random matches 21 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[21]
execute if score $out aeldrion.rdm.random matches 22 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[22]
execute if score $out aeldrion.rdm.random matches 23 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[23]
execute if score $out aeldrion.rdm.random matches 24 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[24]
execute if score $out aeldrion.rdm.random matches 25 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[25]
execute if score $out aeldrion.rdm.random matches 26 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[26]
execute if score $out aeldrion.rdm.random matches 27 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[27]
execute if score $out aeldrion.rdm.random matches 28 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[28]
execute if score $out aeldrion.rdm.random matches 29 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[29]
execute if score $out aeldrion.rdm.random matches 30 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[30]
execute if score $out aeldrion.rdm.random matches 31 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[31]
execute if score $out aeldrion.rdm.random matches 32 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[32]
execute if score $out aeldrion.rdm.random matches 33 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[33]
execute if score $out aeldrion.rdm.random matches 34 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[34]
execute if score $out aeldrion.rdm.random matches 35 run data modify storage picarrow.zombies_evolved:_pilfer.1 Item set from entity @s Inventory[35]

execute store result score #slot picarrow.ze._pilfer run data get storage picarrow.zombies_evolved:_pilfer.1 Item.Slot
data remove storage picarrow.zombies_evolved:_pilfer.1 Item.Slot

execute if score #slot picarrow.ze._pilfer matches 0 run item replace entity @s hotbar.0 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 1 run item replace entity @s hotbar.1 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 2 run item replace entity @s hotbar.2 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 3 run item replace entity @s hotbar.3 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 4 run item replace entity @s hotbar.4 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 5 run item replace entity @s hotbar.5 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 6 run item replace entity @s hotbar.6 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 7 run item replace entity @s hotbar.7 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 8 run item replace entity @s hotbar.8 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 9 run item replace entity @s inventory.0 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 10 run item replace entity @s inventory.1 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 11 run item replace entity @s inventory.2 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 12 run item replace entity @s inventory.3 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 13 run item replace entity @s inventory.4 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 14 run item replace entity @s inventory.5 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 15 run item replace entity @s inventory.6 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 16 run item replace entity @s inventory.7 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 17 run item replace entity @s inventory.8 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 18 run item replace entity @s inventory.9 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 19 run item replace entity @s inventory.10 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 20 run item replace entity @s inventory.11 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 21 run item replace entity @s inventory.12 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 22 run item replace entity @s inventory.13 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 23 run item replace entity @s inventory.14 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 24 run item replace entity @s inventory.15 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 25 run item replace entity @s inventory.16 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 26 run item replace entity @s inventory.17 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 27 run item replace entity @s inventory.18 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 28 run item replace entity @s inventory.19 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 29 run item replace entity @s inventory.20 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 30 run item replace entity @s inventory.21 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 31 run item replace entity @s inventory.22 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 32 run item replace entity @s inventory.23 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 33 run item replace entity @s inventory.24 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 34 run item replace entity @s inventory.25 with minecraft:air
execute if score #slot picarrow.ze._pilfer matches 35 run item replace entity @s inventory.26 with minecraft:air
