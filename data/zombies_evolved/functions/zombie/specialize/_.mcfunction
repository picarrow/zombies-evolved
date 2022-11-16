## AUTHOR: Picarrow

# Figure out which zombie variants can spawn
scoreboard players operation #_jacky_can_spawn zev._ = $jacky_spawning zev._
scoreboard players set #_shrieker_can_spawn zev._ 0
execute if score $shrieker_spawning zev._ matches 1 run function zombies_evolved:zombie/specialize/can_shrieker_spawn
scoreboard players set #_stalac_can_spawn zev._ 0
execute if score $stalac_spawning zev._ matches 1 run function zombies_evolved:zombie/specialize/can_stalac_spawn

# Select a random variant
scoreboard players set #_is_variant zev._ 0
scoreboard players set $min rdm.random 1
scoreboard players set $max rdm.random 100
function random:true_uniform
execute if score $out rdm.random matches 1..3 if score #_jacky_can_spawn zev._ matches 1 store success score #_is_variant zev._ run tag @s add zev.jacky
execute if score $out rdm.random matches 4..5 if score #_shrieker_can_spawn zev._ matches 1 store success score #_is_variant zev._ run tag @s add zev.shrieker
execute if score $out rdm.random matches 6..25 if score #_stalac_can_spawn zev._ matches 1 store success score #_is_variant zev._ run tag @s add zev.stalac
execute if score #_is_variant zev._ matches 0 run tag @s add zev.generic

tag @s add zev.specialized
