## AUTHOR: Picarrow

execute if entity @s[type=minecraft:zombie,predicate=!zombies_evolved:is_baby] run particle minecraft:shriek 0 ~ ~1.75 ~ 0 0 0 1 1 normal
execute if entity @s[type=minecraft:zombie,predicate=zombies_evolved:is_baby] run particle minecraft:shriek 0 ~ ~0.9375 ~ 0 0 0 1 1 normal
execute if entity @s[type=minecraft:husk,predicate=!zombies_evolved:is_baby] run particle minecraft:shriek 0 ~ ~1.875 ~ 0 0 0 1 1 normal
execute if entity @s[type=minecraft:husk,predicate=zombies_evolved:is_baby] run particle minecraft:shriek 0 ~ ~1 ~ 0 0 0 1 1 normal
execute if entity @s[type=minecraft:drowned,predicate=!zombies_evolved:is_baby] run particle minecraft:shriek 0 ~ ~1.75 ~ 0 0 0 1 1 normal
execute if entity @s[type=minecraft:drowned,predicate=zombies_evolved:is_baby] run particle minecraft:shriek 0 ~ ~0.9375 ~ 0 0 0 1 1 normal
