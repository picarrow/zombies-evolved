## AUTHOR : Picarrow

data modify entity @s Pos set from storage zombies_evolved:find_hang_point hang_point
execute unless predicate zombies_evolved:is_baby positioned as @s run tp ~ ~-1.95 ~
execute if predicate zombies_evolved:is_baby positioned as @s run tp ~ ~-0.975 ~
data merge entity @s {CustomName:'{"text":"Grumm"}',NoAI:1b,Silent:1b}
tag @s add zev.stalac.hanging
