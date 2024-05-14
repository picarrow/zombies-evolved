## AUTHOR : Picarrow

# Attempts advancement grants
execute if entity @s[advancements={zombies_evolved:tab/main/brain_rot=false}] run function zombies_evolved:_advancement/_tab/_main/_brain_rot/attempt_grant/_
execute if entity @s[advancements={zombies_evolved:tab/main/darwinism=false}] run function zombies_evolved:_advancement/_tab/_main/_darwinism/attempt_grant/_

# Removes the advancement so this reward function can be triggered again
advancement revoke @s only zombies_evolved:technical/kills_evolved_zombie
