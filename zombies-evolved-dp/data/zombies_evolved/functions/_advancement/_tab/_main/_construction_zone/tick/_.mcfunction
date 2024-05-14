## AUTHOR : Picarrow
##
## CALLER : zombies_evolved:entity/player/tick
##
## ENTREQ : a player
## POSREQ : none

# Grants the advancement 'construction_zone' from tab 'main' to the player if they survive 5 seconds
execute if score @s zev.player.advancement.main.construction_zone.must_survive_time matches 1.. run function zombies_evolved:_advancement/_tab/_main/_construction_zone/tick/_1
