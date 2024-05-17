## AUTHOR : Picarrow
##        :
## ENTCON : ---
## POSCON : ---
##  INPUT : {tags}
##        :
## EFFECT : Summons falling, 4-block long stalactites over time at the position
##          of crumble guiders.
## OUTPUT : ---

scoreboard players add @e[type=minecraft:marker,tag=zev.crumble_guider] zev.crumble_guider.age 1

execute at @e[type=minecraft:marker,scores={zev.crumble_guider.age=1}] run function zombies_evolved:_entity/_crumble_guider/tick_all/_1 with storage zombies_evolved:data _.func.entity.crumble_guider.tick_all.in
execute at @e[type=minecraft:marker,scores={zev.crumble_guider.age=8}] run function zombies_evolved:_entity/_crumble_guider/tick_all/_2 with storage zombies_evolved:data _.func.entity.crumble_guider.tick_all.in
execute at @e[type=minecraft:marker,scores={zev.crumble_guider.age=11}] run function zombies_evolved:_entity/_crumble_guider/tick_all/_3 with storage zombies_evolved:data _.func.entity.crumble_guider.tick_all.in
execute at @e[type=minecraft:marker,scores={zev.crumble_guider.age=14}] run function zombies_evolved:_entity/_crumble_guider/tick_all/_4 with storage zombies_evolved:data _.func.entity.crumble_guider.tick_all.in

kill @e[type=minecraft:marker,scores={zev.crumble_guider.age=14}]
