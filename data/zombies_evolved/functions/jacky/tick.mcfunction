## AUTHOR: Picarrow

execute unless entity @s[tag=zev.assigned] run function zombies_evolved:jacky/assign

# Check anger
scoreboard players set #_is_angry zev._ 0
execute on target run scoreboard players set #_is_angry zev._ 1
execute if entity @s[tag=!zev.jacky.angry] if score #_is_angry zev._ matches 1 run function zombies_evolved:jacky/anger
execute if entity @s[tag=zev.jacky.angry] if score #_is_angry zev._ matches 0 run function zombies_evolved:jacky/quell

execute if score @s zev.jacky.lit_time matches 0.. run function zombies_evolved:jacky/update_lit
