## AUTHOR : Picarrow
##
## CALLER : entity_hit_matching:hurt_target/reward
##
## ENTREQ : a target that is being hurt by a player
## POSREQ : at @s

# # Jacky
# execute if entity @s[tag=zev.jacky] run function zombies_evolved:entity/jacky/hurt

# # Shrieker
# execute if entity @s[tag=zev.shrieker] run function zombies_evolved:entity/shrieker/hurt

# Stalac
execute if entity @s[tag=zev.stalac] run function zombies_evolved:entity/stalac/hurt
