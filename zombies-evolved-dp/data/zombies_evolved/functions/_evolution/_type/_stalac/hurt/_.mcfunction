## AUTHOR : Picarrow

execute if entity @s[tag=zev.stalac.hanging,predicate=!zombies_evolved:is_baby] run playsound minecraft:entity.zombie.hurt hostile @a ~ ~ ~ 1 1 0
execute if entity @s[tag=zev.stalac.hanging,predicate=zombies_evolved:is_baby] run playsound minecraft:entity.zombie.hurt hostile @a ~ ~ ~ 1 1.5 0

execute if entity @s[tag=zev.stalac.hanging] run function zombies_evolved:_evolution/_type/_stalac/fall/_
