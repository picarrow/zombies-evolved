## AUTHOR: Picarrow

# dz
function random:true_uniform
scoreboard players operation #_dz zev._ = $out rdm._

# if dz is valid, proceed
execute unless score #_dz zev._ matches 0 run function zombies_evolved:stalac/crumble/spawn_helpers_2
