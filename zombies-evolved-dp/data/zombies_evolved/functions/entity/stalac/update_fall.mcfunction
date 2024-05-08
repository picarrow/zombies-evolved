## AUTHOR : Picarrow

execute unless score @s zev.stalac.phase_time matches 0.. run scoreboard players set @s zev.stalac.phase_time 6

execute if score @s zev.stalac.phase_time matches 6 if block ~ ~ ~ #zombies_evolved:stalac_fall_canceling run function zombies_evolved:entity/stalac/fell
execute if score @s zev.stalac.phase_time matches 3 if data entity @s {OnGround:1b} run function zombies_evolved:entity/stalac/fell

scoreboard players remove @s zev.stalac.phase_time 1
