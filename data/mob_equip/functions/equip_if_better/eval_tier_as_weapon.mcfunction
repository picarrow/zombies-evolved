## AUTHOR : Picarrow

# Weapon type constants
scoreboard players set #_AXE meq._ 1
scoreboard players set #_HOE meq._ 2
scoreboard players set #_PICKAXE meq._ 3
scoreboard players set #_SHOVEL meq._ 4
scoreboard players set #_SWORD meq._ 5
scoreboard players set #_TRIDENT meq._ 6

# Weapon material constants
scoreboard players set #_DIAMOND meq._ 1
scoreboard players set #_GOLDEN meq._ 2
scoreboard players set #_IRON meq._ 3
scoreboard players set #_NETHERITE meq._ 4
scoreboard players set #_STONE meq._ 5
scoreboard players set #_WOODEN meq._ 6

# Determine weapon type
scoreboard players set #_type meq._ 0
execute if predicate mob_equip:in_main_hand/has_tool/type/axe run scoreboard players operation #_type meq._ = #_AXE meq._
execute if predicate mob_equip:in_main_hand/has_tool/type/hoe run scoreboard players operation #_type meq._ = #_HOE meq._
execute if predicate mob_equip:in_main_hand/has_tool/type/pickaxe run scoreboard players operation #_type meq._ = #_PICKAXE meq._
execute if predicate mob_equip:in_main_hand/has_tool/type/shovel run scoreboard players operation #_type meq._ = #_SHOVEL meq._
execute if predicate mob_equip:in_main_hand/has_tool/type/sword run scoreboard players operation #_type meq._ = #_SWORD meq._
execute if predicate mob_equip:in_main_hand/has_tool/trident run scoreboard players operation #_type meq._ = #_TRIDENT meq._

# Determine weapon material
scoreboard players set #_material meq._ 0
execute if predicate mob_equip:in_main_hand/has_tool/tier/diamond run scoreboard players operation #_material meq._ = #_DIAMOND meq._
execute if predicate mob_equip:in_main_hand/has_tool/tier/golden run scoreboard players operation #_material meq._ = #_GOLDEN meq._
execute if predicate mob_equip:in_main_hand/has_tool/tier/iron run scoreboard players operation #_material meq._ = #_IRON meq._
execute if predicate mob_equip:in_main_hand/has_tool/tier/netherite run scoreboard players operation #_material meq._ = #_NETHERITE meq._
execute if predicate mob_equip:in_main_hand/has_tool/tier/stone run scoreboard players operation #_material meq._ = #_STONE meq._
execute if predicate mob_equip:in_main_hand/has_tool/tier/wooden run scoreboard players operation #_material meq._ = #_WOODEN meq._

# Tiers
execute if score #_type meq._ = #_HOE meq._ run scoreboard players set #_tier meq._ 1
execute if score #_type meq._ = #_PICKAXE meq._ if score #_material meq._ = #_WOODEN meq._ run scoreboard players set #_tier meq._ 2
execute if score #_type meq._ = #_PICKAXE meq._ if score #_material meq._ = #_GOLDEN meq._ run scoreboard players set #_tier meq._ 2
execute if score #_type meq._ = #_SHOVEL meq._ if score #_material meq._ = #_WOODEN meq._ run scoreboard players set #_tier meq._ 3
execute if score #_type meq._ = #_SHOVEL meq._ if score #_material meq._ = #_GOLDEN meq._ run scoreboard players set #_tier meq._ 3
execute if score #_type meq._ = #_PICKAXE meq._ if score #_material meq._ = #_STONE meq._ run scoreboard players set #_tier meq._ 4
execute if score #_type meq._ = #_SHOVEL meq._ if score #_material meq._ = #_STONE meq._ run scoreboard players set #_tier meq._ 5
execute if score #_type meq._ = #_PICKAXE meq._ if score #_material meq._ = #_IRON meq._ run scoreboard players set #_tier meq._ 6
execute if score #_type meq._ = #_SHOVEL meq._ if score #_material meq._ = #_IRON meq._ run scoreboard players set #_tier meq._ 7
execute if score #_type meq._ = #_PICKAXE meq._ if score #_material meq._ = #_DIAMOND meq._ run scoreboard players set #_tier meq._ 8
execute if score #_type meq._ = #_SHOVEL meq._ if score #_material meq._ = #_DIAMOND meq._ run scoreboard players set #_tier meq._ 9
execute if score #_type meq._ = #_PICKAXE meq._ if score #_material meq._ = #_NETHERITE meq._ run scoreboard players set #_tier meq._ 10
execute if score #_type meq._ = #_SHOVEL meq._ if score #_material meq._ = #_NETHERITE meq._ run scoreboard players set #_tier meq._ 11
execute if score #_type meq._ = #_TRIDENT meq._ run scoreboard players set #_tier meq._ 12
execute if score #_type meq._ = #_AXE meq._ if score #_material meq._ = #_WOODEN meq._ run scoreboard players set #_tier meq._ 13
execute if score #_type meq._ = #_AXE meq._ if score #_material meq._ = #_GOLDEN meq._ run scoreboard players set #_tier meq._ 13
execute if score #_type meq._ = #_AXE meq._ if score #_material meq._ = #_STONE meq._ run scoreboard players set #_tier meq._ 14
execute if score #_type meq._ = #_AXE meq._ if score #_material meq._ = #_IRON meq._ run scoreboard players set #_tier meq._ 14
execute if score #_type meq._ = #_AXE meq._ if score #_material meq._ = #_DIAMOND meq._ run scoreboard players set #_tier meq._ 14
execute if score #_type meq._ = #_AXE meq._ if score #_material meq._ = #_NETHERITE meq._ run scoreboard players set #_tier meq._ 15
execute if score #_type meq._ = #_SWORD meq._ if score #_material meq._ = #_WOODEN meq._ run scoreboard players set #_tier meq._ 16
execute if score #_type meq._ = #_SWORD meq._ if score #_material meq._ = #_GOLDEN meq._ run scoreboard players set #_tier meq._ 17
execute if score #_type meq._ = #_SWORD meq._ if score #_material meq._ = #_STONE meq._ run scoreboard players set #_tier meq._ 18
execute if score #_type meq._ = #_SWORD meq._ if score #_material meq._ = #_IRON meq._ run scoreboard players set #_tier meq._ 19
execute if score #_type meq._ = #_SWORD meq._ if score #_material meq._ = #_DIAMOND meq._ run scoreboard players set #_tier meq._ 20
execute if score #_type meq._ = #_SWORD meq._ if score #_material meq._ = #_NETHERITE meq._ run scoreboard players set #_tier meq._ 21
