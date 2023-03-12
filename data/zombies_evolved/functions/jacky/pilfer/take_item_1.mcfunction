## AUTHOR : Picarrow

scoreboard players set $min rdm._ 0
execute store result score $max rdm._ if data storage zombies_evolved:_temp root.grab_bag[]
scoreboard players remove $max rdm._ 1
function random:true_uniform

# Store item data
execute if score $out rdm._ matches 0 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.grab_bag[0]
execute if score $out rdm._ matches 1 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.grab_bag[1]
execute if score $out rdm._ matches 2 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.grab_bag[2]
execute if score $out rdm._ matches 3 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.grab_bag[3]
execute if score $out rdm._ matches 4 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.grab_bag[4]
execute if score $out rdm._ matches 5 run data modify storage zombies_evolved:_temp root.pilfered_item set from storage zombies_evolved:_temp root.grab_bag[5]

# Determine item slot
execute store result score #_slot zev._ run data get storage zombies_evolved:_temp root.pilfered_item.Slot

# Delete item from slot
execute if score #_slot zev._ matches 100 run item replace entity @s armor.feet with minecraft:air
execute if score #_slot zev._ matches 101 run item replace entity @s armor.legs with minecraft:air
execute if score #_slot zev._ matches 102 run item replace entity @s armor.chest with minecraft:air
execute if score #_slot zev._ matches 103 run item replace entity @s armor.head with minecraft:air
execute if score #_slot zev._ matches 0 run item replace entity @s weapon.mainhand with minecraft:air
execute if score #_slot zev._ matches -106 run item replace entity @s weapon.offhand with minecraft:air
