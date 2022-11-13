## AUTHOR: Picarrow

execute unless score @s zev.stalac.phase_time matches 0.. run scoreboard players set @s zev.stalac.phase_time 6
execute if score @s zev.stalac.phase_time matches 6 facing entity @p eyes run tp ~ ~ ~
execute if score @s zev.stalac.phase_time matches 4 if entity @s[predicate=!zombies_evolved:is_baby] unless block ~ ~2 ~ #zombies_evolved:stalac_base run function zombies_evolved:stalac/fall
execute if score @s zev.stalac.phase_time matches 4 if entity @s[predicate=zombies_evolved:is_baby] unless block ~ ~1 ~ #zombies_evolved:stalac_base run function zombies_evolved:stalac/fall
execute if score @s zev.stalac.phase_time matches 2 positioned ~-3 ~-31 ~-3 if entity @a[gamemode=!creative,gamemode=!spectator,dx=5,dy=31,dz=5] run function zombies_evolved:stalac/fall
scoreboard players remove @s zev.stalac.phase_time 1
