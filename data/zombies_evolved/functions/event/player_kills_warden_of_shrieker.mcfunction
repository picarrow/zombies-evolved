## AUTHOR : Picarrow

# Attempts advancement grants
execute if entity @s[advancements={zombies_evolved:tab/main/wardidnt=false}] run function zombies_evolved:entity/player/advancement/main/wardidnt/grant

# Removes the advancement so this reward function can be triggered again
advancement revoke @s only zombies_evolved:technical/kills_warden_of_shrieker
