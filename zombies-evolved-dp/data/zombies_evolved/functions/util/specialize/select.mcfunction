## AUTHOR : Picarrow

# Verify spawn conditions
scoreboard players set #_jacky_can_spawn zev._ 1
execute store result score #_shrieker_can_spawn zev._ run function zombies_evolved:util/specialize/can_shrieker_spawn
execute store result score #_stalac_can_spawn zev._ run function zombies_evolved:util/specialize/can_stalac_spawn

# Select random specialization
execute store result score #_out zev._ run random value 1..100

scoreboard players operation #_high_bound zev._ = $jacky_chance zev._
execute if score #_jacky_can_spawn zev._ matches 1 if score #_out zev._ <= #_high_bound zev._ run tag @s add zev.jacky
scoreboard players operation #_out zev._ -= $jacky_chance zev._

scoreboard players operation #_high_bound zev._ = $shrieker_chance zev._
execute if score #_shrieker_can_spawn zev._ matches 1 if score #_out zev._ <= #_high_bound zev._ if score #_out zev._ matches 1.. run tag @s add zev.shrieker
scoreboard players operation #_out zev._ -= $shrieker_chance zev._

scoreboard players operation #_high_bound zev._ = $stalac_chance zev._
execute if score #_stalac_can_spawn zev._ matches 1 if score #_out zev._ <= #_high_bound zev._ if score #_out zev._ matches 1.. run tag @s add zev.stalac
