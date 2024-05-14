## AUTHOR : Picarrow

# Choose a random number in which to base the evolution
execute store result score #_out zev._ run random value 1..100

# Jacky
execute if score #_out zev._ <= $jacky_chance zev._ run return run function zombies_evolved:_evolution/evolve_naturally/_11

# Early return?
scoreboard players operation #_out zev._ -= $jacky_chance zev._
execute if score #_out zev._ matches ..0 run return 0

# Shrieker
execute if score #_out zev._ <= $shrieker_chance zev._ run return run function zombies_evolved:_evolution/evolve_naturally/_12

# Early return?
scoreboard players operation #_out zev._ -= $shrieker_chance zev._
execute if score #_out zev._ matches ..0 run return 0

# Stalac
execute if score #_out zev._ <= $stalac_chance zev._ run return run function zombies_evolved:_evolution/evolve_naturally/_13

return 0
