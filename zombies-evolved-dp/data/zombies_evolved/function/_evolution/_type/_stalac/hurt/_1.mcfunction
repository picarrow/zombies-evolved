## AUTHOR : Picarrow

execute unless predicate zombies_evolved:is_baby run playsound minecraft:entity.zombie.hurt hostile @a ~ ~ ~ 1 1 0
execute if predicate zombies_evolved:is_baby run playsound minecraft:entity.zombie.hurt hostile @a ~ ~ ~ 1 1.5 0

function zombies_evolved:_evolution/_type/_stalac/fall/_
