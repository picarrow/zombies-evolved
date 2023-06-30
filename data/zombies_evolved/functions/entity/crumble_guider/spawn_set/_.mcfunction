## AUTHOR : Picarrow
##
## ENTCON : inconsequential
## POSCON : the location at which to focus the ability

# Clears the temp data
data remove storage zombies_evolved:data temp

# Determines the idealistic number of guiders to spawn
scoreboard players set $min rdm._ 5
scoreboard players set $max rdm._ 7
function random:true_uniform
scoreboard players operation #_max_guiders zev._ = $out rdm._

# Attempts to spawn the guiders
scoreboard players set #_num_guiders zev._ 0
scoreboard players set #_attempts zev._ 0
data modify storage zombies_evolved:data temp.remaining_positions set value [[-4,-2],[-4,-1],[-4,0],[-4,1],[-4,2],[-3,-3],[-3,-2],[-3,-1],[-3,0],[-3,1],[-3,2],[-3,3],[-2,-4],[-2,-3],[-2,-2],[-2,-1],[-2,0],[-2,1],[-2,2],[-2,3],[-2,4],[-1,-4],[-1,-3],[-1,-2],[-1,-1],[-1,0],[-1,1],[-1,2],[-1,3],[-1,4],[0,-4],[0,-3],[0,-2],[0,-1],[0,1],[0,2],[0,3],[0,4],[1,-4],[1,-3],[1,-2],[1,-1],[1,0],[1,1],[1,2],[1,3],[1,4],[2,-4],[2,-3],[2,-2],[2,-1],[2,0],[2,1],[2,2],[2,3],[2,4],[3,-3],[3,-2],[3,-1],[3,0],[3,1],[3,2],[3,3],[4,-2],[4,-1],[4,0],[4,1],[4,2]]
function zombies_evolved:entity/crumble_guider/spawn_set/_1
