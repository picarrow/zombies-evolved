## AUTHOR : Picarrow

data modify storage zombies_evolved:data _.func.ability.crumble.in set value { \
  max_attempts: 20b, \
  positions: [[-4,-2],[-4,-1],[-4,0],[-4,1],[-4,2],[-3,-3],[-3,-2],[-3,-1],[-3,0],[-3,1],[-3,2],[-3,3],[-2,-4],[-2,-3],[-2,-2],[-2,-1],[-2,0],[-2,1],[-2,2],[-2,3],[-2,4],[-1,-4],[-1,-3],[-1,-2],[-1,-1],[-1,0],[-1,1],[-1,2],[-1,3],[-1,4],[0,-4],[0,-3],[0,-2],[0,-1],[0,1],[0,2],[0,3],[0,4],[1,-4],[1,-3],[1,-2],[1,-1],[1,0],[1,1],[1,2],[1,3],[1,4],[2,-4],[2,-3],[2,-2],[2,-1],[2,0],[2,1],[2,2],[2,3],[2,4],[3,-3],[3,-2],[3,-1],[3,0],[3,1],[3,2],[3,3],[4,-2],[4,-1],[4,0],[4,1],[4,2]] \
}
execute store result storage zombies_evolved:data _.func.ability.crumble.in.max_guiders byte 1 run random value 5..7
function zombies_evolved:_ability/crumble/_
function zombies_evolved:_evolution/_type/_stalac/fall/_
