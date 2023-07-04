## AUTHOR : Picarrow

# # Jacky
# scoreboard players set #_is_jacky zev._ 0
# execute store success score #_is_jacky zev._ on attacker if entity @s[tag=zev.jacky]
# execute if score #_is_jacky zev._ matches 1 run function zombies_evolved:entity/jacky/hit

# # Crumbling Stalactite
# execute if entity @s[advancements={zombies_evolved:tab/main/construction_zone=false}] if entity @e[type=minecraft:falling_block,tag=zev.crumbling_stalactite,predicate=entity_hit_matching:is_direct,distance=..2,limit=1] run function zombies_evolved:entity/player/advancement/main/construction_zone/is_being_hurt_by_crumbling_stalactite
