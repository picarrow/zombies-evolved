## AUTHOR: Picarrow

execute if score #_slot zev._ matches 1 run data modify storage zombies_evolved:equip_if_better old_item set from entity @s ArmorItems[0]
execute if score #_slot zev._ matches 2 run data modify storage zombies_evolved:equip_if_better old_item set from entity @s ArmorItems[1]
execute if score #_slot zev._ matches 3 run data modify storage zombies_evolved:equip_if_better old_item set from entity @s ArmorItems[2]
execute if score #_slot zev._ matches 4 run data modify storage zombies_evolved:equip_if_better old_item set from entity @s ArmorItems[3]

execute store result storage zombies_evolved:_temp root.nbts int 1 run data get storage zombies_evolved:equip_if_better old_item
execute if data storage zombies_evolved:_temp {root:{nbts:0}} run data remove storage zombies_evolved:equip_if_better old_item

execute if score #_slot zev._ matches 1 run data modify entity @s ArmorItems[0] set from storage zombies_evolved:equip_if_better item
execute if score #_slot zev._ matches 2 run data modify entity @s ArmorItems[1] set from storage zombies_evolved:equip_if_better item
execute if score #_slot zev._ matches 3 run data modify entity @s ArmorItems[2] set from storage zombies_evolved:equip_if_better item
execute if score #_slot zev._ matches 4 run data modify entity @s ArmorItems[2] set from storage zombies_evolved:equip_if_better item
