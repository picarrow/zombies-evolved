## AUTHOR : Picarrow

scoreboard players remove $shrieker_chance zev._ 1
execute if score $shrieker_chance zev._ matches ..-1 run scoreboard players set $shrieker_chance zev._ 0
function zombies_evolved:_settings/show/_
