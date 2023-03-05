## AUTHOR: Picarrow

data modify entity @s HandItems[0] set from storage zombies_evolved:equip_if_better item

scoreboard players set #_slot zev._ 0
execute if predicate zombies_evolved:in_main_hand/has_armor/type/boots run scoreboard players set #_slot zev._ 1
execute if predicate zombies_evolved:in_main_hand/has_armor/type/leggings run scoreboard players set #_slot zev._ 2
execute if predicate zombies_evolved:in_main_hand/has_armor/type/chestplate run scoreboard players set #_slot zev._ 3
execute if predicate zombies_evolved:in_main_hand/has_armor/type/helmet run scoreboard players set #_slot zev._ 4

function zombies_evolved:jacky/equip_if_better/query_armor_tier
scoreboard players operation #_new_tier zev._ = #_tier zev._

execute if score #_slot zev._ matches 1 run data modify entity @s HandItems[0] set from storage zombies_evolved:_temp root.zombie.ArmorItems[0]
execute if score #_slot zev._ matches 2 run data modify entity @s HandItems[0] set from storage zombies_evolved:_temp root.zombie.ArmorItems[1]
execute if score #_slot zev._ matches 3 run data modify entity @s HandItems[0] set from storage zombies_evolved:_temp root.zombie.ArmorItems[2]
execute if score #_slot zev._ matches 4 run data modify entity @s HandItems[0] set from storage zombies_evolved:_temp root.zombie.ArmorItems[3]

function zombies_evolved:jacky/equip_if_better/query_armor_tier
scoreboard players operation #_old_tier zev._ = #_tier zev._

kill @s
