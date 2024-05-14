## AUTHOR : Picarrow

# Jacky
scoreboard players set #_is_jacky zev._ 0
execute on attacker store success score #_is_jacky zev._ if entity @s[tag=zev.jacky]
execute if score #_is_jacky zev._ matches 1 run function zombies_evolved:_evolution/_type/_jacky/hit/_

# Crumbling Stalactite
# execute if entity @s[advancements={zombies_evolved:tab/main/construction_zone=false}] unless score $direct ehm._ matches -1 if entity @e[type=minecraft:falling_block,tag=zev.crumbling_stalactite,predicate=hit_match:is_direct,distance=..2,limit=1] run function zombies_evolved:entity/player/advancement/main/construction_zone/is_being_hurt_by_crumbling_stalactite
