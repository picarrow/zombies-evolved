## AUTHOR: Picarrow

# dx and dz
scoreboard players set $min rdm._ -3
scoreboard players set $max rdm._ 3
function random:true_uniform
scoreboard players operation #_dx zev._ = $out rdm._
function random:true_uniform
scoreboard players operation #_dz zev._ = $out rdm._

# if dx and dz are valid, proceed
scoreboard players set #is_invalid zev._ 0
execute store success score #_is_invalid zev._ if score #_dx zev._ matches 0 if score #_dz zev._ matches 0
execute if score #_is_invalid zev._ matches 0 summon minecraft:marker run function zombies_evolved:stalac/crumble/spawn_helpers_1

scoreboard players add #_attempts zev._ 1
execute if score #_attempts zev._ matches ..19 if score #_num_stalactites zev._ < #_max_stalactites zev._ run function zombies_evolved:stalac/crumble/spawn_helpers
