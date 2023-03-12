## AUTHOR : Picarrow
## INPUT: execution position

# 7.353% - 10.294% occupation of positions
# Assuming they are all valid
scoreboard players set $min rdm._ 5
scoreboard players set $max rdm._ 7
function random:true_uniform
scoreboard players operation #_max_stalactites zev._ = $out rdm._

scoreboard players set #_num_stalactites zev._ 0
scoreboard players set #_attempts zev._ 0
data merge storage zombies_evolved:0 {positions:[[-4,-2],[-4,-1],[-4,0],[-4,1],[-4,2],[-3,-3],[-3,-2],[-3,-1],[-3,0],[-3,1],[-3,2],[-3,3],[-2,-4],[-2,-3],[-2,-2],[-2,-1],[-2,0],[-2,1],[-2,2],[-2,3],[-2,4],[-1,-4],[-1,-3],[-1,-2],[-1,-1],[-1,0],[-1,1],[-1,2],[-1,3],[-1,4],[0,-4],[0,-3],[0,-2],[0,-1],[0,1],[0,2],[0,3],[0,4],[1,-4],[1,-3],[1,-2],[1,-1],[1,0],[1,1],[1,2],[1,3],[1,4],[2,-4],[2,-3],[2,-2],[2,-1],[2,0],[2,1],[2,2],[2,3],[2,4],[3,-3],[3,-2],[3,-1],[3,0],[3,1],[3,2],[3,3],[4,-2],[4,-1],[4,0],[4,1],[4,2]]}
function zombies_evolved:stalac/crumble/spawn_guiders

data remove storage zombies_evolved:0 selected_position
data remove storage zombies_evolved:0 positions
