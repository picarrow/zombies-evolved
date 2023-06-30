## AUTHOR : Picarrow

# Ticks advancements that require ticking
execute if entity @s[advancements={zombies_evolved:tab/main/root=false}] run function zombies_evolved:entity/player/advancement/main/root/tick
execute if entity @s[advancements={zombies_evolved:tab/main/construction_zone=false}] run function zombies_evolved:entity/player/advancement/main/construction_zone/tick
