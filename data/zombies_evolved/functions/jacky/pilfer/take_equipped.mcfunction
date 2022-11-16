## AUTHOR: Picarrow

scoreboard players set $min rdm.random 0
execute store result score $max rdm.random if data storage zombies_evolved:0 Temp.GrabBag[]
scoreboard players remove $max rdm.random 1
function random:true_uniform

# Store item data
execute if score $out rdm.random matches 0 run data modify storage zombies_evolved:0 PilferedItemData.Item set from storage zombies_evolved:0 Temp.GrabBag[0]
execute if score $out rdm.random matches 1 run data modify storage zombies_evolved:0 PilferedItemData.Item set from storage zombies_evolved:0 Temp.GrabBag[1]
execute if score $out rdm.random matches 2 run data modify storage zombies_evolved:0 PilferedItemData.Item set from storage zombies_evolved:0 Temp.GrabBag[2]
execute if score $out rdm.random matches 3 run data modify storage zombies_evolved:0 PilferedItemData.Item set from storage zombies_evolved:0 Temp.GrabBag[3]
execute if score $out rdm.random matches 4 run data modify storage zombies_evolved:0 PilferedItemData.Item set from storage zombies_evolved:0 Temp.GrabBag[4]
execute if score $out rdm.random matches 5 run data modify storage zombies_evolved:0 PilferedItemData.Item set from storage zombies_evolved:0 Temp.GrabBag[5]

# Determine item slot
execute store result score #_slot zev._ run data get storage zombies_evolved:0 PilferedItemData.Item.Slot

# Delete item from slot
execute if score #_slot zev._ matches 100 run item replace entity @s armor.feet with minecraft:air
execute if score #_slot zev._ matches 101 run item replace entity @s armor.legs with minecraft:air
execute if score #_slot zev._ matches 102 run item replace entity @s armor.chest with minecraft:air
execute if score #_slot zev._ matches 103 run item replace entity @s armor.head with minecraft:air
execute if score #_slot zev._ matches 0 run item replace entity @s weapon.mainhand with minecraft:air
execute if score #_slot zev._ matches -106 run item replace entity @s weapon.offhand with minecraft:air
