## AUTHOR : Picarrow

execute store success score #_is_jacky zev._ on attacker if entity @s[tag=zev.jacky]
execute if score #_is_jacky zev._ matches 1 run function zombies_evolved:jacky/hit
