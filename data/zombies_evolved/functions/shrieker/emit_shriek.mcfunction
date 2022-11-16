## AUTHOR: Picarrow

execute if entity @s[type=minecraft:zombie,predicate=!zombies_evolved:is_baby] positioned ~ ~1.75 ~ run particle minecraft:shriek 0 ~ ~ ~ 0 0 0 1 1 normal
execute if entity @s[type=minecraft:zombie,predicate=zombies_evolved:is_baby] positioned ~ ~0.9375 ~ run particle minecraft:shriek 0 ~ ~ ~ 0 0 0 1 1 normal
execute if entity @s[type=minecraft:husk,predicate=!zombies_evolved:is_baby] positioned ~ ~1.875 ~ run particle minecraft:shriek 0 ~ ~ ~ 0 0 0 1 1 normal
execute if entity @s[type=minecraft:husk,predicate=zombies_evolved:is_baby] positioned ~ ~1 ~ run particle minecraft:shriek 0 ~ ~ ~ 0 0 0 1 1 normal
execute if entity @s[type=minecraft:drowned,predicate=!zombies_evolved:is_baby] positioned ~ ~1.75 ~ run particle minecraft:shriek 0 ~ ~ ~ 0 0 0 1 1 normal
execute if entity @s[type=minecraft:drowned,predicate=zombies_evolved:is_baby] positioned ~ ~0.9375 ~ run particle minecraft:shriek 0 ~ ~ ~ 0 0 0 1 1 normal
