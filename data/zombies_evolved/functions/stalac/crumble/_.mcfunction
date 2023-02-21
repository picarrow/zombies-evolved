## AUTHOR: Picarrow

scoreboard players set $min rdm._ 3
scoreboard players set $max rdm._ 7
function random:true_uniform
scoreboard players operation #_max_stalactites zev._ = $out rdm._

scoreboard players set #_num_stalactites zev._ 0
scoreboard players set #_attempts zev._ 0
data merge storage zombies_evolved:0 {positions:[[-3,-3],[-3,-2],[-3,-1],[-3,0],[-3,1],[-3,2],[-3,3],[-2,-3],[-2,-2],[-2,-1],[-2,0],[-2,1],[-2,2],[-2,3],[-1,-3],[-1,-2],[-1,-1],[-1,0],[-1,1],[-1,2],[-1,3],[0,-3],[0,-2],[0,-1],[0,1],[0,2],[0,3],[1,-3],[1,-2],[1,-1],[1,0],[1,1],[1,2],[1,3],[2,-3],[2,-2],[2,-1],[2,0],[2,1],[2,2],[2,3],[3,-3],[3,-2],[3,-1],[3,0],[3,1],[3,2],[3,3]]}
function zombies_evolved:stalac/crumble/spawn_helpers

data remove storage zombies_evolved:0 selected_position
data remove storage zombies_evolved:0 positions

# tellraw @a ["Stalactites: ",{"score":{"name":"#_num_stalactites","objective":"zev._"}}]
# tellraw @a ["Attempts: ",{"score":{"name":"#_attempts","objective":"zev._"}}]