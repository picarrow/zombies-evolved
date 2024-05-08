## AUTHOR : Picarrow

playsound minecraft:item.axe.strip hostile @a ~ ~ ~ 1 0.5 0
playsound minecraft:entity.illusioner.hurt hostile @a ~ ~ ~ 1 1.5 0

execute if entity @s[type=minecraft:zombie,predicate=!zombies_evolved:is_baby] run particle minecraft:block{block_state:{Name:"minecraft:pumpkin"}} ~ ~1.75 ~ 0 0 0 1 10 normal
execute if entity @s[type=minecraft:zombie,predicate=zombies_evolved:is_baby] run particle minecraft:block{block_state:{Name:"minecraft:pumpkin"}} ~ ~0.9375 ~ 0 0 0 1 5 normal
execute if entity @s[type=minecraft:husk,predicate=!zombies_evolved:is_baby] run particle minecraft:block{block_state:{Name:"minecraft:pumpkin"}} ~ ~1.875 ~ 0 0 0 1 10 normal
execute if entity @s[type=minecraft:husk,predicate=zombies_evolved:is_baby] run particle minecraft:block{block_state:{Name:"minecraft:pumpkin"}} ~ ~1 ~ 0 0 0 1 5 normal
execute if entity @s[type=minecraft:drowned,predicate=!zombies_evolved:is_baby] run particle minecraft:block{block_state:{Name:"minecraft:pumpkin"}} ~ ~1.75 ~ 0 0 0 1 10 normal
execute if entity @s[type=minecraft:drowned,predicate=zombies_evolved:is_baby] run particle minecraft:block{block_state:{Name:"minecraft:pumpkin"}} ~ ~0.9375 ~ 0 0 0 1 5 normal

scoreboard players set @s zev.jacky.lit_time 10
