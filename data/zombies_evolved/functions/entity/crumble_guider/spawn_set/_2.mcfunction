## AUTHOR : Picarrow

# Computes dy
# * Step 1
scoreboard players set #_dy zev._ -4
# * Step 2
data modify storage reltp:data func.teleport.in set value {offset:[0d,-4d,0d]}
execute store result storage reltp:data func.teleport.in.offset[0] double 1 run scoreboard players get #_dx zev._
execute store result storage reltp:data func.teleport.in.offset[2] double 1 run scoreboard players get #_dz zev._
function reltp:_/teleport
# * Step 3
execute positioned as @s run function zombies_evolved:entity/crumble_guider/spawn_set/_3

# If dy and the originating block are valid, proceed otherwise kill
scoreboard players set #_is_valid zev._ 0
execute store success score #_is_valid zev._ unless score #_dy zev._ matches -3..-1 unless score #_dy zev._ matches 4 positioned as @s if block ~ ~ ~ #zombies_evolved:cubic_earth run function zombies_evolved:entity/crumble_guider/spawn_set/_4
execute if score #_is_valid zev._ matches 0 run kill @s
