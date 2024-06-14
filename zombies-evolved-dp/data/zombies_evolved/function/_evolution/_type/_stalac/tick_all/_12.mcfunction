## AUTHOR : Picarrow

execute unless score @s zev.stalac.phase_time matches 0.. run scoreboard players set @s zev.stalac.phase_time 6

execute if score @s zev.stalac.phase_time matches 6 if block ~ ~ ~ #zombies_evolved:stalac_fall_canceling run function zombies_evolved:_evolution/_type/_stalac/tick_all/fell/_
execute if entity @s[scores={zev.stalac.phase_time=3},predicate=zombies_evolved:on_ground] run function zombies_evolved:_evolution/_type/_stalac/tick_all/fell/_

scoreboard players remove @s zev.stalac.phase_time 1
