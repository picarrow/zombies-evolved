## AUTHOR : Picarrow
##
## CALLER : entity_hit_matching:hurt_player/reward
##
## ENTREQ : a player who is being hurt by a target
## POSREQ : at @s

# # Jacky
# scoreboard players set #_is_jacky zev._ 0
# execute store success score #_is_jacky zev._ on attacker if entity @s[tag=zev.jacky]
# execute if score #_is_jacky zev._ matches 1 run function zombies_evolved:entity/jacky/hit

# # Crumbling Stalactite
# scoreboard players set #_is_crumbling_stalactite zev._ 0
# execute store success score #_is_crumbling_stalactite zev._ as @e[type=minecraft:falling_block,tag=zev.crumbling,distance=..2] if score @s ehm.id = $direct ehm.id
# execute if score #_is_crumbling_stalactite zev._ matches 1 if entity @s[advancements={zombies_evolved:tab/main/construction_zone=false}] run function zombies_evolved:entity/player/advancement/main/construction_zone/is_being_hurt_by_crumbling_stalactite
