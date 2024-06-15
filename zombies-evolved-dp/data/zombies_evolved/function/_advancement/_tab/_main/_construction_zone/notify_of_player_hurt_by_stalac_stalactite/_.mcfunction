## AUTHOR : Picarrow
##        :
## ENTCON : A player that is being hurt by a stalac's stalactite.
## POSCON : ---
##  INPUT : ---
## OUTPUT : ---
## EFFECT : Starts a 2-second survival clock that determines whether the player
##          is eligible to earn criterion 'withstood_damage_dealt_by_a_stalac_stalactite'.
##          If the player is already dead or dies over the course of the clock,
##          the clock is canceled and the player is no longer eligible.


# Start a 2-second survival clock if the player is alive
# The survival clock checks eligibility to earn criterion 'withstood_damage_dealt_by_a_stalac_stalactite'
tag @s add zev._self
execute at @s as @e[distance=..0.00001,limit=1,type=minecraft:player,tag=zev._self,advancements={zombies_evolved:tab/main/construction_zone={withstood_damage_dealt_by_a_stalac_stalactite=false}}] run function zombies_evolved:_advancement/_tab/_main/_construction_zone/notify_of_player_hurt_by_stalac_stalactite/_1
tag @s remove zev._self
