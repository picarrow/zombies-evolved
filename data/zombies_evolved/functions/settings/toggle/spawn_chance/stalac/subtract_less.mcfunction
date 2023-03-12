## AUTHOR : Picarrow

scoreboard players remove $stalac_chance zev._ 1
execute if score $stalac_chance zev._ matches ..-1 run scoreboard players set $stalac_chance zev._ 0
function zombies_evolved:settings/show
