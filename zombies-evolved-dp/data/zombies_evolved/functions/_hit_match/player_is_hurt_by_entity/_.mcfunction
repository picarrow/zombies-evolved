## AUTHOR : Picarrow

# Process the jacky hit, if damage is from a jacky
scoreboard players set #_is_jacky zev._ 0
execute on attacker store success score #_is_jacky zev._ if entity @s[tag=zev.jacky]
execute if score #_is_jacky zev._ matches 1 run function zombies_evolved:_evolution/_type/_jacky/hit/_

# Notify advancement Construction Zone, if damage is directly dealt by a stalac's stalactite
execute if score $direct ehm._ = $direct ehm._ if entity @e[type=minecraft:falling_block,tag=zev.stalac_stalactite,predicate=hit_match:is_direct,distance=..2,limit=1] run function zombies_evolved:_advancement/_tab/_main/_construction_zone/notify_of_player_hurt_by_stalac_stalactite/_
