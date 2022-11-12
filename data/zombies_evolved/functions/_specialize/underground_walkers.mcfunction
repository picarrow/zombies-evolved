## AUTHOR: Picarrow

tag @s add zev.specialized

scoreboard players set $min rdm.random 1
scoreboard players set $max rdm.random 100
function random:true_uniform
execute if score $out rdm.random matches 1..3 run tag @s add zev.jacky
execute if score $out rdm.random matches 4..5 run tag @s add zev.shrieker
execute if score $out rdm.random matches 6..100 run tag @s add zev.generic
