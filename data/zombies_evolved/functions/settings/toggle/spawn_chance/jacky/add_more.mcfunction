## AUTHOR: Picarrow

scoreboard players remove #total_chance zev._ 100
execute if score #total_chance zev._ matches ..-10 run scoreboard players add $jacky_chance zev._ 10
execute if score #total_chance zev._ matches -9..-1 run scoreboard players operation $jacky_chance zev._ -= #total_chance zev._
function zombies_evolved:settings/show
