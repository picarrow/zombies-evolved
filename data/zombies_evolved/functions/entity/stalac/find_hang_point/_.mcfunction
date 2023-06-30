## AUTHOR : Picarrow
##
## ENTCON : inconsequential
## POSCON : the location from which to find the hang point
##
## INPUT  : none
## OUTPUT : > func.find_hang_point.out.habitat: whether the hang point is ideal
##          * func.find_hang_point.out.hang_point: the location at which to hang the stalac
##          * func.find_hang_point.out.height: the number of blocks between the ground and the ceiling
##          * func.find_hang_point.out.valid: whether the hang point is valid

# Clears the output
data remove storage zombies_evolved:data func.find_hang_point.out

# Proceeds with the help of a marker
execute summon minecraft:marker run function zombies_evolved:entity/stalac/find_hang_point/query_ceiling
