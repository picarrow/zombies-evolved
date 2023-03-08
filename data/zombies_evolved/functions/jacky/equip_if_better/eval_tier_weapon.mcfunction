## AUTHOR  : Picarrow
##
## CONTEXT : at executor

scoreboard players set #_tool_type zev._ 0
execute if predicate zombies_evolved:in_main_hand/has_weapon/type/axe run scoreboard players set #_tool_type zev._ 1
execute if predicate zombies_evolved:in_main_hand/has_weapon/type/pickaxe run scoreboard players set #_tool_type zev._ 2
execute if predicate zombies_evolved:in_main_hand/has_weapon/type/shovel run scoreboard players set #_tool_type zev._ 3
execute if predicate zombies_evolved:in_main_hand/has_weapon/type/sword run scoreboard players set #_tool_type zev._ 4

scoreboard players set #_tool_material zev._ 0
execute if predicate zombies_evolved:in_main_hand/has_weapon/material/wooden run scoreboard players set #_tool_material zev._ 1
execute if predicate zombies_evolved:in_main_hand/has_weapon/material/golden run scoreboard players set #_tool_material zev._ 2
execute if predicate zombies_evolved:in_main_hand/has_weapon/material/stone run scoreboard players set #_tool_material zev._ 3
execute if predicate zombies_evolved:in_main_hand/has_weapon/material/iron run scoreboard players set #_tool_material zev._ 4
execute if predicate zombies_evolved:in_main_hand/has_weapon/material/diamond run scoreboard players set #_tool_material zev._ 5
execute if predicate zombies_evolved:in_main_hand/has_weapon/material/netherite run scoreboard players set #_tool_material zev._ 6

# Tiers
# > Hoes
execute if predicate zombies_evolved:in_main_hand/has_weapon/type/hoe run scoreboard players set #_tier zev._ 2

# > Pickaxes & shovels
execute if score #_tool_type zev._ matches 2 if score #_tool_material zev._ matches 1..2 run scoreboard players set #_tier zev._ 3
execute if score #_tool_type zev._ matches 3 if score #_tool_material zev._ matches 1..2 run scoreboard players set #_tier zev._ 4
execute if score #_tool_type zev._ matches 2 if score #_tool_material zev._ matches 3 run scoreboard players set #_tier zev._ 5
execute if score #_tool_type zev._ matches 3 if score #_tool_material zev._ matches 3 run scoreboard players set #_tier zev._ 6
execute if score #_tool_type zev._ matches 2 if score #_tool_material zev._ matches 4 run scoreboard players set #_tier zev._ 7
execute if score #_tool_type zev._ matches 3 if score #_tool_material zev._ matches 4 run scoreboard players set #_tier zev._ 8
execute if score #_tool_type zev._ matches 2 if score #_tool_material zev._ matches 5 run scoreboard players set #_tier zev._ 9
execute if score #_tool_type zev._ matches 3 if score #_tool_material zev._ matches 5 run scoreboard players set #_tier zev._ 10
execute if score #_tool_type zev._ matches 2 if score #_tool_material zev._ matches 6 run scoreboard players set #_tier zev._ 11
execute if score #_tool_type zev._ matches 3 if score #_tool_material zev._ matches 6 run scoreboard players set #_tier zev._ 12

# > Trident
execute if predicate zombies_evolved:in_main_hand/has_weapon/type/trident run scoreboard players set #_tier zev._ 13

# > Axes
execute if score #_tool_type zev._ matches 1 if score #_tool_material zev._ matches 1..2 run scoreboard players set #_tier zev._ 14
execute if score #_tool_type zev._ matches 1 if score #_tool_material zev._ matches 3..5 run scoreboard players set #_tier zev._ 15
execute if score #_tool_type zev._ matches 1 if score #_tool_material zev._ matches 6 run scoreboard players set #_tier zev._ 16

# > Swords
execute if score #_tool_type zev._ matches 4 if score #_tool_material zev._ matches 1 run scoreboard players set #_tier zev._ 17
execute if score #_tool_type zev._ matches 4 if score #_tool_material zev._ matches 2 run scoreboard players set #_tier zev._ 18
execute if score #_tool_type zev._ matches 4 if score #_tool_material zev._ matches 3 run scoreboard players set #_tier zev._ 19
execute if score #_tool_type zev._ matches 4 if score #_tool_material zev._ matches 4 run scoreboard players set #_tier zev._ 20
execute if score #_tool_type zev._ matches 4 if score #_tool_material zev._ matches 5 run scoreboard players set #_tier zev._ 21
execute if score #_tool_type zev._ matches 4 if score #_tool_material zev._ matches 6 run scoreboard players set #_tier zev._ 22
