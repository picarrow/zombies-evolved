## AUTHOR  : Picarrow
##
## CONTEXT : at executor

# Stores the zombie's nbt into memory
data modify storage zombies_evolved:_temp root.zombie set from entity @s

# Uses an armor stand to:
# * Determine which slot the new item belongs to
# * Store the old item for future reference
# * Evalaute the tier of the new and old item
execute summon minecraft:armor_stand run function zombies_evolved:jacky/equip_if_better/query

# Queries the number of custom item tags each item has
scoreboard players set #_new_custom_tags zev._ 0
scoreboard players set #_old_custom_tags zev._ 0
execute if data storage zombies_evolved:equip_if_better in.item.tag store result score #_new_custom_tags zev._ run data get storage zombies_evolved:equip_if_better in.item.tag
execute if data storage zombies_evolved:equip_if_better out.item.tag store result score #_old_custom_tags zev._ run data get storage zombies_evolved:equip_if_better out.item.tag

# Queries the amount of damage each item has
scoreboard players set #_new_damage zev._ 0
scoreboard players set #_old_damage zev._ 0
execute if data storage zombies_evolved:equip_if_better in.item.tag.Damage store result score #_new_damage zev._ run data get storage zombies_evolved:equip_if_better in.item.tag.Damage
execute if data storage zombies_evolved:equip_if_better out.item.tag.Damage store result score #_old_damage zev._ run data get storage zombies_evolved:equip_if_better out.item.tag.Damage

# Equips the new item in the following priority:
# 1. Is of a higher tier
# 2. Has more custom item tags
# 3. Has less damage
data merge storage zombies_evolved:equip_if_better {out:{success:0b}}
execute if score #_new_tier zev._ > #_old_tier zev._ store success storage zombies_evolved:equip_if_better out.success byte 1 run function zombies_evolved:jacky/equip_if_better/equip
execute if data storage zombies_evolved:equip_if_better out{success:0b} if score #_new_tier zev._ = #_old_tier zev._ if score #_new_custom_tags zev._ > #_old_custom_tags zev._ store success storage zombies_evolved:equip_if_better out.success byte 1 run function zombies_evolved:jacky/equip_if_better/equip
execute if data storage zombies_evolved:equip_if_better out{success:0b} if score #_new_tier zev._ = #_old_tier zev._ if score #_new_custom_tags zev._ = #_old_custom_tags zev._ if score #_new_damage zev._ < #_old_damage zev._ store success storage zombies_evolved:equip_if_better out.success byte 1 run function zombies_evolved:jacky/equip_if_better/equip

# Removes the tag 'out.item' if an item wasn't actually replaced
execute if data storage zombies_evolved:equip_if_better out{success:0b} run data remove storage zombies_evolved:equip_if_better out.item
execute if data storage zombies_evolved:equip_if_better out{success:1b} store result score #_tags zev._ run data get storage zombies_evolved:equip_if_better out.item
execute if data storage zombies_evolved:equip_if_better out{success:1b} if score #_tags zev._ matches 0 run data remove storage zombies_evolved:equip_if_better out.item

# Clears the temp storage
data remove storage zombies_evolved:_temp root
