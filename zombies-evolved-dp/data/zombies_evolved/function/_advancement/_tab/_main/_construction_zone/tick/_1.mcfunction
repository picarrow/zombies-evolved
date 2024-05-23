## AUTHOR : Picarrow

# Cancel the clock if the player died
execute if score @s zev.advancement.tab.main.construction_zone.deaths matches 1.. run return run function zombies_evolved:_advancement/_tab/_main/_construction_zone/tick/_11

# Reward the criterion when the clock hits 0
execute if score @s zev.advancement.tab.main.construction_zone.must_survive_time matches 0 run return run function zombies_evolved:_advancement/_tab/_main/_construction_zone/tick/_12

# Tick the clock
scoreboard players remove @s zev.advancement.tab.main.construction_zone.must_survive_time 1
