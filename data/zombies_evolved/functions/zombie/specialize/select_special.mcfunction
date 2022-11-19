## AUTHOR: Picarrow

# Check spawn conditions
scoreboard players set #_jacky_can_spawn zev._ 1
scoreboard players set #_shrieker_can_spawn zev._ 0
function zombies_evolved:zombie/specialize/can_shrieker_spawn
scoreboard players set #_stalac_can_spawn zev._ 0
function zombies_evolved:zombie/specialize/can_stalac_spawn

# Choose random variant
scoreboard players set $min rdm.random 1
scoreboard players set $max rdm.random 100
function random:true_uniform

scoreboard players operation #_high_bound zev._ = $jacky_chance zev._
execute if score $out rdm.random <= #_high_bound zev._ if score #_jacky_can_spawn zev._ matches 1 store success score #_is_special zev._ run tag @s add zev.jacky

scoreboard players set #_low_bound zev._ 1
scoreboard players operation #_low_bound zev._ += $jacky_chance zev._
scoreboard players operation #_high_bound zev._ += $shrieker_chance zev._
execute if score $out rdm.random >= #_low_bound zev._ if score $out rdm.random <= #_high_bound zev._ if score #_shrieker_can_spawn zev._ matches 1 store success score #_is_special zev._ run tag @s add zev.shrieker

scoreboard players operation #_low_bound zev._ += $shrieker_chance zev._
scoreboard players operation #_high_bound zev._ += $stalac_chance zev._
execute if score $out rdm.random >= #_low_bound zev._ if score $out rdm.random <= #_high_bound zev._ if score #_stalac_can_spawn zev._ matches 1 store success score #_is_special zev._ run tag @s add zev.stalac
