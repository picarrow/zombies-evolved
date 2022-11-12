## AUTHOR: Picarrow

execute unless entity @s[tag=zev.assigned] run function zombies_evolved:jacky/assign

execute if score @s zev.jacky.lit_time matches 0.. run function zombies_evolved:jacky/is_lit
