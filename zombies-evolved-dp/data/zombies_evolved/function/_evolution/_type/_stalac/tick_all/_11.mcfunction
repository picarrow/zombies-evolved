## AUTHOR : Picarrow

execute unless score @s zev.stalac.phase_time matches 0.. run scoreboard players set @s zev.stalac.phase_time 6

execute if score @s zev.stalac.phase_time matches 6 run tag @e[type=minecraft:player,gamemode=!spectator,sort=nearest,limit=1] add zev._candidate
execute if score @s zev.stalac.phase_time matches 6 run tag @e[type=minecraft:villager,sort=nearest,limit=1] add zev._candidate
teleport @s[scores={zev.stalac.phase_time=6}] ~ ~ ~ facing entity @e[tag=zev._candidate,sort=nearest,limit=1] eyes
execute if score @s zev.stalac.phase_time matches 6 run tag @e[tag=zev._candidate] remove zev._candidate

execute if entity @s[scores={zev.stalac.phase_time=4},predicate=!zombies_evolved:is_baby] unless block ~ ~2 ~ #zombies_evolved:stalac_can_hang_on run function zombies_evolved:_evolution/_type/_stalac/fall/_
execute if entity @s[scores={zev.stalac.phase_time=4},predicate=zombies_evolved:is_baby] unless block ~ ~1 ~ #zombies_evolved:stalac_can_hang_on run function zombies_evolved:_evolution/_type/_stalac/fall/_

execute if score @s zev.stalac.phase_time matches 2 positioned ~-3 ~-31 ~-3 if entity @e[dx=5,dy=31,dz=5,type=minecraft:player,gamemode=!creative,gamemode=!spectator,limit=1] run function zombies_evolved:_evolution/_type/_stalac/tick_all/ambush/_
execute if score @s zev.stalac.phase_time matches 2 positioned ~-3 ~-31 ~-3 if entity @e[dx=5,dy=31,dz=5,type=minecraft:villager,limit=1] run function zombies_evolved:_evolution/_type/_stalac/tick_all/ambush/_

scoreboard players remove @s zev.stalac.phase_time 1
