## AUTHOR : Picarrow

# Reward Brain Rot criteria 'killed_an_evolved_zombie'
advancement grant @s only zombies_evolved:tab/main/brain_rot kill_an_evolved_zombie

# Reward Genetic Regression criteria depending on which type of evolved zombie was killed
advancement grant @s[advancements={zombies_evolved:technical/player_kills_evolved_zombie={kill_a_jacky=true}}] only zombies_evolved:tab/main/genetic_regression kill_a_jacky
advancement grant @s[advancements={zombies_evolved:technical/player_kills_evolved_zombie={kill_a_shrieker=true}}] only zombies_evolved:tab/main/genetic_regression kill_a_shrieker
advancement grant @s[advancements={zombies_evolved:technical/player_kills_evolved_zombie={kill_a_stalac=true}}] only zombies_evolved:tab/main/genetic_regression kill_a_stalac

# Notify Darwinism advancement of kill
function zombies_evolved:_advancement/_tab/_main/_darwinism/notify_of_kill/_

# Enable this reward function to be triggered again
advancement revoke @s only zombies_evolved:technical/player_kills_evolved_zombie
