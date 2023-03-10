## AUTHOR : Picarrow

# Weapon Type Constants
scoreboard players set #_AXE zev._ 1
scoreboard players set #_HOE zev._ 2
scoreboard players set #_PICKAXE zev._ 3
scoreboard players set #_SHOVEL zev._ 4
scoreboard players set #_SWORD zev._ 5
scoreboard players set #_TRIDENT zev._ 6

# Weapon Material Constants
scoreboard players set #_DIAMOND zev._ 1
scoreboard players set #_GOLDEN zev._ 2
scoreboard players set #_IRON zev._ 3
scoreboard players set #_NETHERITE zev._ 4
scoreboard players set #_STONE zev._ 5
scoreboard players set #_WOODEN zev._ 6

# Determine weapon type
scoreboard players set #_type zev._ 0
execute if predicate zombies_evolved:in_main_hand/has_tool/type/axe run scoreboard players operation #_type zev._ = #_AXE zev._
execute if predicate zombies_evolved:in_main_hand/has_tool/type/hoe run scoreboard players operation #_type zev._ = #_HOE zev._
execute if predicate zombies_evolved:in_main_hand/has_tool/type/pickaxe run scoreboard players operation #_type zev._ = #_PICKAXE zev._
execute if predicate zombies_evolved:in_main_hand/has_tool/type/shovel run scoreboard players operation #_type zev._ = #_SHOVEL zev._
execute if predicate zombies_evolved:in_main_hand/has_tool/type/sword run scoreboard players operation #_type zev._ = #_SWORD zev._
execute if predicate zombies_evolved:in_main_hand/has_tool/type/trident run scoreboard players operation #_type zev._ = #_TRIDENT zev._

# Determine weapon material
scoreboard players set #_material zev._ 0
execute if predicate zombies_evolved:in_main_hand/has_tool/tier/diamond run scoreboard players operation #_material zev._ = #_DIAMOND zev._
execute if predicate zombies_evolved:in_main_hand/has_tool/tier/golden run scoreboard players operation #_material zev._ = #_GOLDEN zev._
execute if predicate zombies_evolved:in_main_hand/has_tool/tier/iron run scoreboard players operation #_material zev._ = #_IRON zev._
execute if predicate zombies_evolved:in_main_hand/has_tool/tier/netherite run scoreboard players operation #_material zev._ = #_NETHERITE zev._
execute if predicate zombies_evolved:in_main_hand/has_tool/tier/stone run scoreboard players operation #_material zev._ = #_STONE zev._
execute if predicate zombies_evolved:in_main_hand/has_tool/tier/wooden run scoreboard players operation #_material zev._ = #_WOODEN zev._

# Tiers
execute if score #_type zev._ = #_HOE zev._ run scoreboard players set #_tier zev._ 1
execute if score #_type zev._ = #_PICKAXE zev._ if score #_material zev._ = #_WOODEN zev._ run scoreboard players set #_tier zev._ 2
execute if score #_type zev._ = #_PICKAXE zev._ if score #_material zev._ = #_GOLDEN zev._ run scoreboard players set #_tier zev._ 2
execute if score #_type zev._ = #_SHOVEL zev._ if score #_material zev._ = #_WOODEN zev._ run scoreboard players set #_tier zev._ 3
execute if score #_type zev._ = #_SHOVEL zev._ if score #_material zev._ = #_GOLDEN zev._ run scoreboard players set #_tier zev._ 3
execute if score #_type zev._ = #_PICKAXE zev._ if score #_material zev._ = #_STONE zev._ run scoreboard players set #_tier zev._ 4
execute if score #_type zev._ = #_SHOVEL zev._ if score #_material zev._ = #_STONE zev._ run scoreboard players set #_tier zev._ 5
execute if score #_type zev._ = #_PICKAXE zev._ if score #_material zev._ = #_IRON zev._ run scoreboard players set #_tier zev._ 6
execute if score #_type zev._ = #_SHOVEL zev._ if score #_material zev._ = #_IRON zev._ run scoreboard players set #_tier zev._ 7
execute if score #_type zev._ = #_PICKAXE zev._ if score #_material zev._ = #_DIAMOND zev._ run scoreboard players set #_tier zev._ 8
execute if score #_type zev._ = #_SHOVEL zev._ if score #_material zev._ = #_DIAMOND zev._ run scoreboard players set #_tier zev._ 9
execute if score #_type zev._ = #_PICKAXE zev._ if score #_material zev._ = #_NETHERITE zev._ run scoreboard players set #_tier zev._ 10
execute if score #_type zev._ = #_SHOVEL zev._ if score #_material zev._ = #_NETHERITE zev._ run scoreboard players set #_tier zev._ 11
execute if score #_type zev._ = #_TRIDENT zev._ run scoreboard players set #_tier zev._ 12
execute if score #_type zev._ = #_AXE zev._ if score #_material zev._ = #_WOODEN zev._ run scoreboard players set #_tier zev._ 13
execute if score #_type zev._ = #_AXE zev._ if score #_material zev._ = #_GOLDEN zev._ run scoreboard players set #_tier zev._ 13
execute if score #_type zev._ = #_AXE zev._ if score #_material zev._ = #_STONE zev._ run scoreboard players set #_tier zev._ 14
execute if score #_type zev._ = #_AXE zev._ if score #_material zev._ = #_IRON zev._ run scoreboard players set #_tier zev._ 14
execute if score #_type zev._ = #_AXE zev._ if score #_material zev._ = #_DIAMOND zev._ run scoreboard players set #_tier zev._ 14
execute if score #_type zev._ = #_AXE zev._ if score #_material zev._ = #_NETHERITE zev._ run scoreboard players set #_tier zev._ 15
execute if score #_type zev._ = #_SWORD zev._ if score #_material zev._ = #_WOODEN zev._ run scoreboard players set #_tier zev._ 16
execute if score #_type zev._ = #_SWORD zev._ if score #_material zev._ = #_GOLDEN zev._ run scoreboard players set #_tier zev._ 17
execute if score #_type zev._ = #_SWORD zev._ if score #_material zev._ = #_STONE zev._ run scoreboard players set #_tier zev._ 18
execute if score #_type zev._ = #_SWORD zev._ if score #_material zev._ = #_IRON zev._ run scoreboard players set #_tier zev._ 19
execute if score #_type zev._ = #_SWORD zev._ if score #_material zev._ = #_DIAMOND zev._ run scoreboard players set #_tier zev._ 20
execute if score #_type zev._ = #_SWORD zev._ if score #_material zev._ = #_NETHERITE zev._ run scoreboard players set #_tier zev._ 21
