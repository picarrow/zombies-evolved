scoreboard players set $min aeldrion.rdm.random 0
execute store result score $max aeldrion.rdm.random if data storage picarrow.zombies_evolved:_pilfer.0 Temp.GrabBag[]
scoreboard players remove $max aeldrion.rdm.random 1
function aeldrion.random:true_uniform

# Store item data
execute if score $out aeldrion.rdm.random matches 0 run data modify storage picarrow.zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage picarrow.zombies_evolved:_pilfer.0 Temp.GrabBag[0]
execute if score $out aeldrion.rdm.random matches 1 run data modify storage picarrow.zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage picarrow.zombies_evolved:_pilfer.0 Temp.GrabBag[1]
execute if score $out aeldrion.rdm.random matches 2 run data modify storage picarrow.zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage picarrow.zombies_evolved:_pilfer.0 Temp.GrabBag[2]
execute if score $out aeldrion.rdm.random matches 3 run data modify storage picarrow.zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage picarrow.zombies_evolved:_pilfer.0 Temp.GrabBag[3]
execute if score $out aeldrion.rdm.random matches 4 run data modify storage picarrow.zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage picarrow.zombies_evolved:_pilfer.0 Temp.GrabBag[4]
execute if score $out aeldrion.rdm.random matches 5 run data modify storage picarrow.zombies_evolved:_pilfer.0 PilferedItemData.Item set from storage picarrow.zombies_evolved:_pilfer.0 Temp.GrabBag[6]

# Determine item slot
execute store result score #slot picarrow.ze._pilfer.0 run data get storage picarrow.zombies_evolved:_pilfer.0 PilferedItemData.Item.Slot
data remove storage picarrow.zombies_evolved:_pilfer.0 PilferedItemData.Item.Slot

# Delete item from slot
execute if score #slot picarrow.ze._pilfer.0 matches 100 run item replace entity @s armor.feet with minecraft:air
execute if score #slot picarrow.ze._pilfer.0 matches 101 run item replace entity @s armor.legs with minecraft:air
execute if score #slot picarrow.ze._pilfer.0 matches 102 run item replace entity @s armor.chest with minecraft:air
execute if score #slot picarrow.ze._pilfer.0 matches 103 run item replace entity @s armor.head with minecraft:air
execute if score #slot picarrow.ze._pilfer.0 matches 0 run item replace entity @s weapon.mainhand with minecraft:air
execute if score #slot picarrow.ze._pilfer.0 matches -106 run item replace entity @s weapon.offhand with minecraft:air
