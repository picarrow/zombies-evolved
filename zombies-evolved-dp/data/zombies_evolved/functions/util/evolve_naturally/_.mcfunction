## AUTHOR : Picarrow
##        :
## ENTCON : Unevolved zombie types that can evolve.
## POSCON : ---
##  INPUT : ---
##        :
## EFFECT : Applies natural spawning rules and a little bit of randomness to
##          determine which evolution the zombie type should evolve into.
## OUTPUT : ---

execute at @s unless function zombies_evolved:util/evolve_naturally/_1 run function zombies_evolved:evolution/type/generic/assign/_
