### AUTHOR: CloudWolf
### ADAPTED BY: Picarrow

execute as @s at @s if entity @s[advancements={hcz.entity_hit_matching:on_hurt={is_bouncer=true}}] run function picarrow.hardcore_zombies:_private/zombies/bouncer/player_hurts
execute as @s at @s if entity @s[advancements={hcz.entity_hit_matching:on_hurt={is_jacky=true}}] run function picarrow.hardcore_zombies:_private/zombies/jacky/player_hurts
execute as @s at @s if entity @s[advancements={hcz.entity_hit_matching:on_hurt={is_shrieker=true}}] run function picarrow.hardcore_zombies:_private/zombies/shrieker/player_hurts
execute as @s at @s if entity @s[advancements={hcz.entity_hit_matching:on_hurt={is_spawner=true}}] run function picarrow.hardcore_zombies:_private/zombies/spawner/player_hurts

execute if entity @s[advancements={hcz.entity_hit_matching:on_hurt={target=true}}] run function hcz.entity_hit_matching:find_entity1
advancement revoke @s only hcz.entity_hit_matching:on_hurt
