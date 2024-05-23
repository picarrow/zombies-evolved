## AUTHOR : Picarrow

scoreboard players add $debug_mode zev._ 1
execute if score $debug_mode zev._ matches 2.. run scoreboard players set $debug_mode zev._ 0
function zombies_evolved:_settings/show/_
