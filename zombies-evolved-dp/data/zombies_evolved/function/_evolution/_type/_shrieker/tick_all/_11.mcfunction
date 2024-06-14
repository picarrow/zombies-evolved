## AUTHOR : Picarrow

execute if score @s zev.shrieker.shriek_time matches 45 run function zombies_evolved:_evolution/_type/_shrieker/tick_all/_111
execute if score @s zev.shrieker.shriek_time matches 40 run function zombies_evolved:_evolution/_type/_shrieker/tick_all/emit_shriek/_
execute if score @s zev.shrieker.shriek_time matches 35 run function zombies_evolved:_evolution/_type/_shrieker/tick_all/emit_shriek/_
execute if score @s zev.shrieker.shriek_time matches 30 run function zombies_evolved:_evolution/_type/_shrieker/tick_all/emit_shriek/_
execute if score @s zev.shrieker.shriek_time matches 25 run function zombies_evolved:_evolution/_type/_shrieker/tick_all/emit_shriek/_
execute if score @s zev.shrieker.shriek_time matches 20 run function zombies_evolved:_evolution/_type/_shrieker/tick_all/emit_shriek/_
execute if score @s zev.shrieker.shriek_time matches 15 run function zombies_evolved:_evolution/_type/_shrieker/tick_all/emit_shriek/_
execute if score @s zev.shrieker.shriek_time matches 10 run function zombies_evolved:_evolution/_type/_shrieker/tick_all/emit_shriek/_
execute if score @s zev.shrieker.shriek_time matches 5 run function zombies_evolved:_evolution/_type/_shrieker/tick_all/emit_shriek/_
execute if score @s zev.shrieker.shriek_time matches 0 run function zombies_evolved:_evolution/_type/_shrieker/tick_all/_112

scoreboard players remove @s zev.shrieker.shriek_time 1
