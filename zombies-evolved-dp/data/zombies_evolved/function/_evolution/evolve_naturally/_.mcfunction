## AUTHOR : Picarrow
##        :
## ENTCON : Unevolved zombie types that can evolve.
## POSCON : ---
##  INPUT : ---
##        :
## EFFECT : Applies natural spawning rules and a little bit of randomness to
##          determine which evolution the zombie type should evolve into.
## OUTPUT : ---

execute at @s unless function zombies_evolved:_evolution/evolve_naturally/_1 run function zombies_evolved:_evolution/_type/_generic/assign/_
