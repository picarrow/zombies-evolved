## AUTHOR : Picarrow

# Teleports the stalac to the hang point
data modify entity @s Pos set from storage zombies_evolved:data func.find_hang_point.out.hang_point

# Offsets the stalac downwards in respect to its height
execute unless predicate zombies_evolved:is_baby positioned as @s run tp @s ~ ~-1.95 ~
execute if predicate zombies_evolved:is_baby positioned as @s run tp @s ~ ~-0.975 ~

data merge entity @s {CustomName:'{"text":"Grumm"}',NoAI:1b,Silent:1b}
tag @s add zev.stalac.hanging
