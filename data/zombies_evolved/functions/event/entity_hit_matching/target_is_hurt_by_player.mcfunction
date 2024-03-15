## AUTHOR : Picarrow

# Jacky
execute unless score $victim ehm._ matches -1 as @e[tag=zev.jacky,predicate=hit_match:is_victim,limit=1] at @s run function zombies_evolved:entity/jacky/hurt

# Shrieker
execute unless score $victim ehm._ matches -1 as @e[tag=zev.shrieker,predicate=hit_match:is_victim,limit=1] at @s run function zombies_evolved:entity/shrieker/hurt

# Stalac
execute unless score $victim ehm._ matches -1 as @e[tag=zev.stalac,predicate=hit_match:is_victim,limit=1] at @s run function zombies_evolved:entity/stalac/hurt
