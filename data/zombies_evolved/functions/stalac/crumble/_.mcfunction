## AUTHOR: Picarrow
# To Do
# - Ensure that two stalactites can't spawn in the same place
# - Ensure that stalactites have 3 blocks of space underneath them to fall
# - Ensure that stalactites can't become a block
# - Optimize number of max attempts

scoreboard players set #_num_stalactites zev._ 0

scoreboard players set $min rdm._ 3
scoreboard players set $max rdm._ 5
function random:true_uniform
scoreboard players operation #_max_stalactites zev._ = $out rdm._

scoreboard players set #_attempts zev._ 0

function zombies_evolved:stalac/crumble/spawn_helpers

tellraw @a ["Stalactites: ",{"score":{"name":"#_num_stalactites","objective":"zev._"}}]
tellraw @a ["Attempts: ",{"score":{"name":"#_attempts","objective":"zev._"}}]
