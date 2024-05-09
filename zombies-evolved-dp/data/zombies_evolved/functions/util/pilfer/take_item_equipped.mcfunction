## AUTHOR : Picarrow

execute store result score #_max_index zev._ if data storage zombies_evolved:pilfer temp.grab_bag[]
execute store result storage zombies_evolved:pilfer temp.max_index int 1 run scoreboard players remove #_max_index zev._ 1
execute store result score #_out zev._ run function zombies_evolved:util/pilfer/random with storage zombies_evolved:pilfer temp

# Stores the item
execute if score #_out zev._ matches 0 run data modify storage zombies_evolved:pilfer temp.stolen_item set from storage zombies_evolved:pilfer temp.grab_bag[0]
execute if score #_out zev._ matches 1 run data modify storage zombies_evolved:pilfer temp.stolen_item set from storage zombies_evolved:pilfer temp.grab_bag[1]
execute if score #_out zev._ matches 2 run data modify storage zombies_evolved:pilfer temp.stolen_item set from storage zombies_evolved:pilfer temp.grab_bag[2]
execute if score #_out zev._ matches 3 run data modify storage zombies_evolved:pilfer temp.stolen_item set from storage zombies_evolved:pilfer temp.grab_bag[3]
execute if score #_out zev._ matches 4 run data modify storage zombies_evolved:pilfer temp.stolen_item set from storage zombies_evolved:pilfer temp.grab_bag[4]
execute if score #_out zev._ matches 5 run data modify storage zombies_evolved:pilfer temp.stolen_item set from storage zombies_evolved:pilfer temp.grab_bag[5]

# Extracts the item slot
execute store result score #_slot zev._ run data get storage zombies_evolved:pilfer temp.stolen_item.Slot

# Deletes the item from the slot
execute if score #_slot zev._ matches 0 run item replace entity @s weapon.mainhand with minecraft:air
execute if score #_slot zev._ matches -106 run item replace entity @s weapon.offhand with minecraft:air
execute if score #_slot zev._ matches 100 run item replace entity @s armor.feet with minecraft:air
execute if score #_slot zev._ matches 101 run item replace entity @s armor.legs with minecraft:air
execute if score #_slot zev._ matches 102 run item replace entity @s armor.chest with minecraft:air
execute if score #_slot zev._ matches 103 run item replace entity @s armor.head with minecraft:air
