## AUTHOR : Picarrow, CloudWolf, nphhpn

scoreboard players set #_override ehm.id 1
advancement grant @s only entity_hit_matching:target_hurts_player
advancement grant @s only entity_hit_matching:player_hurts_target
scoreboard players reset #_override ehm.id
