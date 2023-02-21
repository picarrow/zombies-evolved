## AUTHOR: Picarrow

data merge storage reltp:args {relative:1b,offset:[0d,-4d,0d]}
execute store result storage reltp:args offset[0] double 1 run scoreboard players get #_dx zev._
execute store result storage reltp:args offset[2] double 1 run scoreboard players get #_dz zev._
function reltp:_/teleport

# dy
scoreboard players set #_dy zev._ -4
execute positioned as @s run function zombies_evolved:stalac/crumble/spawn_helpers_2

# if dy and the originating block is valid, succeed otherwise kill
scoreboard players set #_successful zev._ 0
execute store success score #_successful zev._ unless score #_dy zev._ matches 4 positioned as @s if block ~ ~ ~ #zombies_evolved:cubic run function zombies_evolved:stalac/crumble/succeed
execute if score #_successful zev._ matches 0 run kill @s
