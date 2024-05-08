## AUTHOR : Picarrow

# Jacky
execute if score $victim ehm._ = $victim ehm._ as @e[tag=zev.jacky,predicate=hit_match:is_victim,limit=1] at @s run function zombies_evolved:entity/jacky/hurt

# Shrieker
execute if score $victim ehm._ = $victim ehm._ as @e[tag=zev.shrieker,predicate=hit_match:is_victim,limit=1] at @s run function zombies_evolved:entity/shrieker/hurt

# Stalac
execute if score $victim ehm._ = $victim ehm._ as @e[tag=zev.stalac,predicate=hit_match:is_victim,limit=1] at @s run function zombies_evolved:entity/stalac/hurt
