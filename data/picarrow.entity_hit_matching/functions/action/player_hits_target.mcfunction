# commands to run on a player when they hit a target entity
# target entity is tagged with picarrow.ehm.target

execute if entity @e[type=#picarrow.entity_hit_matching:targets,tag=picarrow.ehm.target,tag=picarrow.ze.jacky] run function picarrow.zombies_evolved:_private/zombies/jacky/player_hits
execute if entity @e[type=#picarrow.entity_hit_matching:targets,tag=picarrow.ehm.target,tag=picarrow.ze.shrieker] run function picarrow.zombies_evolved:_private/zombies/shrieker/player_hits
