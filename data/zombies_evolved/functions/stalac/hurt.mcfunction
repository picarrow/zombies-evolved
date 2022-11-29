## AUTHOR: Picarrow

execute if entity @s[tag=zev.stalac.hanging] at @s run playsound minecraft:entity.zombie.hurt hostile @a ~ ~ ~ 1 1 0
execute if entity @s[tag=zev.stalac.hanging] run function zombies_evolved:stalac/fall
