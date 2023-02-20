## AUTHOR: Picarrow

# dx
scoreboard players set $min rdm._ -3
scoreboard players set $max rdm._ 3
function random:true_uniform
scoreboard players operation #_dx zev._ = $out rdm._

# if dx is valid, proceed
execute unless score #_dx zev._ matches 0 run function zombies_evolved:stalac/crumble/spawn_helpers_1

scoreboard players add #_attempts zev._ 1
execute if score #_attempts zev._ matches ..19 if score #_num_stalactites zev._ < #_max_stalactites zev._ run function zombies_evolved:stalac/crumble/spawn_helpers
