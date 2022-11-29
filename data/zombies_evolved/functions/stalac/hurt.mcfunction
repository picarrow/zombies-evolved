## AUTHOR: Picarrow

execute if entity @s[tag=zev.stalac.hanging] unless predicate zombies_evolved:is_baby at @s run playsound minecraft:entity.zombie.hurt hostile @a ~ ~ ~ 1 1 0
execute if entity @s[tag=zev.stalac.hanging] if predicate zombies_evolved:is_baby at @s run playsound minecraft:entity.zombie.hurt hostile @a ~ ~ ~ 1 1.5 0
execute if entity @s[tag=zev.stalac.hanging] run function zombies_evolved:stalac/fall
