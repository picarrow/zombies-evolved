## AUTHOR : Picarrow
##
## CALLER : zombies_evolved:event/entity_hit_matching/player_is_hurt_by_target
##
## ENTREQ : a player who is being hurt by a crumbling stalactite
## POSREQ : none

# Starts the survival clock
scoreboard players set @s zev.player.advancement.main.construction_zone.must_survive_time 30
