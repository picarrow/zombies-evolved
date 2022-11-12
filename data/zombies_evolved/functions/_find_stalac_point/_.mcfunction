## AUTHOR: Picarrow
## INPUT: <execution position>
## OUTPUT: zombies_evolved:_find_stalac_point (storage)

scoreboard objectives add zev._find_stalac_point dummy

execute align xyz run summon minecraft:marker ~0.5 ~-1 ~0.5 {Tags:["zev._find_stalac_point.0"]}
execute align xyz positioned ~0.5 ~-1 ~0.5 as @e[type=minecraft:marker,tag=zev._find_stalac_point.0,distance=..0.00001,limit=1] run function zombies_evolved:_find_stalac_point/compute_results

scoreboard objectives remove zev._find_stalac_point
