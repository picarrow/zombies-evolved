## AUTHOR : Picarrow

execute if score #_max_index zev._ matches 1 run return 0
execute store result storage zombies_evolved:data _.func.ability.pilfer.temp.max_index int 1 run scoreboard players remove #_max_index zev._ 1
return run function zombies_evolved:_ability/pilfer/get_random_index/_1 with storage zombies_evolved:data _.func.ability.pilfer.temp
