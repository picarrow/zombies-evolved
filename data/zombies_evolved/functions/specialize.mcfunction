## AUTHOR: Picarrow

scoreboard players set #shrieker_avail zev._ 0
scoreboard players set #stalac_avail zev._ 0

# Shriekers
execute store result score #y zev._ run data get entity @s Pos[1] 1

execute if score #y zev._ <= $sea_level zev._ unless entity @s[type=minecraft:drowned] run scoreboard players set #shrieker_avail zev._ 1

# Stalacs
function zombies_evolved:_find_stalac_point/_
execute store result score #height zev._ run data get storage zombies_evolved:_find_stalac_point Height
execute store result score #valid zev._ run data get storage zombies_evolved:_find_stalac_point Valid
execute store result score #universal zev._ run data get storage zombies_evolved:_find_stalac_point Universal

execute unless predicate zombies_evolved:in_dripstone_caves if score #universal zev._ matches 1 if score #height zev._ matches 8..32 run scoreboard players set #stalac_avail zev._ 1
execute if predicate zombies_evolved:in_dripstone_caves if score #valid zev._ matches 1 if score #height zev._ matches 8..32 run scoreboard players set #stalac_avail zev._ 1

# Bleh
scoreboard players set $min rdm.random 1
scoreboard players set $max rdm.random 100
function random:true_uniform
execute if score $out rdm.random matches 1..3 run tag @s add zev.jacky
execute if score $out rdm.random matches 4..5 if score #shrieker_avail zev._ matches 1 run tag @s add zev.shrieker
execute if score $out rdm.random matches 4..5 if score #shrieker_avail zev._ matches 0 run tag @s add zev.generic
execute if score $out rdm.random matches 6..25 if score #stalac_avail zev._ matches 1 run tag @s add zev.stalac
execute if score $out rdm.random matches 6..25 if score #stalac_avail zev._ matches 0 run tag @s add zev.generic
execute if score $out rdm.random matches 26..100 run tag @s add zev.generic

tag @s add zev.specialized
