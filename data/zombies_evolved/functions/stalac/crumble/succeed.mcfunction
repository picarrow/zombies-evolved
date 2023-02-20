## AUTHOR: Picarrow

data merge entity @s {Tags:["zev.crumble_helper"]}
scoreboard players add #_num_stalactites zev._ 1
tellraw @a ["",{"score":{"name":"#_dx","objective":"zev._"}},", ",{"score":{"name":"#_dy","objective":"zev._"}},", ",{"score":{"name":"#_dz","objective":"zev._"}}]
