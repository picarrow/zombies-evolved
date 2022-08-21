execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hurt={is_jacky=true}}] at @s run function picarrow.zombies_evolved:_private/zombies/jacky/player_is_hurt_by_entity

execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hurt={target=true}}] run function cloudwolf.entity_hit_matching:find_entity1
advancement revoke @s only cloudwolf.entity_hit_matching:on_hurt
