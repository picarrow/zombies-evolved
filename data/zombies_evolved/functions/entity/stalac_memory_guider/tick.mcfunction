## AUTHOR : Picarrow

data modify storage zombies_evolved:data root.copy_stalac set from entity @s data.memory
execute on vehicle run data modify entity @s {} merge from storage zombies_evolved:data root.copy_stalac
execute on vehicle run scoreboard players reset @s ehm.id
function hit_match:id/assign_all/_
kill @s
