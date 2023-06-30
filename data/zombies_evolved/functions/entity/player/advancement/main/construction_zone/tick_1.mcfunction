## AUTHOR : Picarrow

# Ticks the clock
scoreboard players remove @s zev.player.advancement.main.construction_zone.must_survive_time 1

# Cancels the clock if the player died
execute if score @s zev.player.advancement.main.construction_zone.has_died matches 1.. run scoreboard players reset @s zev.player.advancement.main.construction_zone.must_survive_time
execute if score @s zev.player.advancement.main.construction_zone.has_died matches 1.. run scoreboard players reset @s zev.player.advancement.main.construction_zone.has_died

# Awards the advancement 'construction_zone' from tab 'main' to the player if they survived
execute if score @s zev.player.advancement.main.construction_zone.must_survive_time matches 0 run advancement grant @s only zombies_evolved:tab/main/construction_zone
