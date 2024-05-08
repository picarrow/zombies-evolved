## AUTHOR : Picarrow

function zombies_evolved:util/pilfer/_
execute on attacker at @s run playsound minecraft:entity.illusioner.ambient hostile @a ~ ~ ~ 1 1.5 0
execute on attacker run scoreboard players set @s zev.jacky.lit_time 10
