## AUTHOR : Picarrow

# Reward Down from the Birdhouse criterion if a hanging stalac is the victim
execute if entity @e[tag=zev.stalac.hanging,predicate=hit_match:is_victim,limit=1] run advancement grant @s only zombies_evolved:tab/main/down_from_the_birdhouse knock_down_a_hanging_stalac

# Jacky
execute as @e[tag=zev.jacky,predicate=hit_match:is_victim,limit=1] at @s run function zombies_evolved:_evolution/_type/_jacky/hurt/_

# Shrieker
execute as @e[tag=zev.shrieker,predicate=hit_match:is_victim,limit=1] at @s run function zombies_evolved:_evolution/_type/_shrieker/hurt/_

# Stalac
execute as @e[tag=zev.stalac,predicate=hit_match:is_victim,limit=1] at @s run function zombies_evolved:_evolution/_type/_stalac/hurt/_
