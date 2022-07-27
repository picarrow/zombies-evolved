### AUTHOR: CloudWolf
### ADAPTED BY: Picarrow

execute as @s at @s if entity @s[advancements={hcz.entity_hit_matching:on_hurt={is_jacky=true}}] run function hcz:jacky/player_hurts
execute as @s at @s if entity @s[advancements={hcz.entity_hit_matching:on_hurt={is_shrieker=true}}] run function hcz:shrieker/player_hurts
execute as @s at @s if entity @s[advancements={hcz.entity_hit_matching:on_hurt={is_swarmer=true}}] run function hcz:swarmer/player_hurts

execute if entity @s[advancements={hcz.entity_hit_matching:on_hurt={target=true}}] run function hcz.entity_hit_matching:find_entity1
advancement revoke @s only hcz.entity_hit_matching:on_hurt
