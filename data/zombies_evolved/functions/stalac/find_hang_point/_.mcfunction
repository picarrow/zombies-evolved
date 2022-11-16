## AUTHOR: Picarrow
## INPUT: <execution position>
## OUTPUT: zombies_evolved:find_hang_point (storage)

execute align xyz run summon minecraft:marker ~0.5 ~-1 ~0.5 {Tags:["zev.0"]}
execute align xyz positioned ~0.5 ~-1 ~0.5 as @e[type=minecraft:marker,tag=zev.0,distance=..0.00001,limit=1] run function zombies_evolved:stalac/find_hang_point/compute_results
