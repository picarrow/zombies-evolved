## AUTHOR : Picarrow

# Convert the marker into a guider if the pillar of space at dx and dy is valid.
execute store result storage zombies_evolved:data _.func."ability.crumble".temp.dx int 1 run scoreboard players get #_dx zev._
execute store result storage zombies_evolved:data _.func."ability.crumble".temp.dz int 1 run scoreboard players get #_dz zev._
function zombies_evolved:_ability/crumble/_131 with storage zombies_evolved:data _.func."ability.crumble".temp
scoreboard players set #_dy zev._ -3
execute positioned as @s run function zombies_evolved:_ability/crumble/_132

# Remove the marker if it didn't become a guider.
execute if entity @s[tag=!zev.crumble_guider] run kill @s
