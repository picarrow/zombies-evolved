## AUTHOR : Picarrow
##        :
## ENTCON : ---
## POSCON : ---
##  INPUT : ---
## OUTPUT : ---
## EFFECT : Grants criterion 'withstood_damage_dealt_by_a_stalac_stalactite' to
##          all players who survive the survival clock.

# Target all players that have a running clock
execute as @a[scores={zev.advancement.tab.main.construction_zone.must_survive_time=0..}] run function zombies_evolved:_advancement/_tab/_main/_construction_zone/tick/_1
