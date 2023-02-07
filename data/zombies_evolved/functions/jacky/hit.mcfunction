## AUTHOR: Picarrow

function zombies_evolved:jacky/pilfer/_
execute on attacker at @s run playsound minecraft:entity.evoker.celebrate hostile @a ~ ~ ~ 1 2 0
execute on attacker run scoreboard players set @s zev.jacky.lit_time 10
