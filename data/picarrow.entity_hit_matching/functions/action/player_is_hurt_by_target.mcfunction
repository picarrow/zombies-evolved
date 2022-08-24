# commands to run on a player when they are hurt by a target entity
# target entity is tagged with picarrow.ehm.target

execute if entity @e[type=#picarrow.entity_hit_matching:targets,tag=picarrow.ehm.target,tag=picarrow.ze.jacky] run function picarrow.zombies_evolved:_private/zombies/jacky/player_is_hurt
