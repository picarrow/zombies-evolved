## AUTHOR : Picarrow

# Jacky
execute if score $victim ehm._ = $victim ehm._ as @e[tag=zev.jacky,predicate=hit_match:is_victim,limit=1] at @s run function zombies_evolved:_evolution/_type/_jacky/hurt/_

# Shrieker
execute if score $victim ehm._ = $victim ehm._ as @e[tag=zev.shrieker,predicate=hit_match:is_victim,limit=1] at @s run function zombies_evolved:_evolution/_type/_shrieker/hurt/_

# Stalac
execute if score $victim ehm._ = $victim ehm._ as @e[tag=zev.stalac,predicate=hit_match:is_victim,limit=1] at @s run function zombies_evolved:_evolution/_type/_stalac/hurt/_
