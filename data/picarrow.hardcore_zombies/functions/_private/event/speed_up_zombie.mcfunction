scoreboard players set $min hcz.random 230
scoreboard players set $max hcz.random 345
function hcz.random:true_uniform
execute store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 0.001 run scoreboard players get $out hcz.random
