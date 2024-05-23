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

# Initializes the output
data modify storage zombies_evolved:data func.find_hang_point.out set value {height:-1,valid:0b}

# Proceeds with the help of a marker
execute summon minecraft:marker run function zombies_evolved:_evolution/_type/_stalac/find_hang_point/_1
