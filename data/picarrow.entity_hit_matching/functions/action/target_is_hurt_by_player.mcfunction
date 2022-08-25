# commands to run on a target entity when they are hurt by a player
# player is tagged with picarrow.ehm.player

execute if entity @s[tag=picarrow.ze.jacky] run function picarrow.zombies_evolved:_private/zombies/jacky/is_hurt_by_player
execute if entity @s[tag=picarrow.ze.shrieker] run function picarrow.zombies_evolved:_private/zombies/shrieker/is_hurt_by_player
