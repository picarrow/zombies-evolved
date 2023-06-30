## AUTHOR : Picarrow

# Attempts advancement grants
execute if entity @s[advancements={zombies_evolved:tab/main/brain_rot=false}] run function zombies_evolved:entity/player/advancement/brain_rot/attempt_grant
execute if entity @s[advancements={zombies_evolved:tab/main/darwinism=false}] run function zombies_evolved:entity/player/advancement/darwinism/attempt_grant

# Removes the advancement so this reward function can be triggered again
advancement revoke @s only zombies_evolved:technical/kills_evolved_zombie
