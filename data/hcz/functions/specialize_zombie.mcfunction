### AUTHOR: Picarrow

scoreboard players set $min random 1
scoreboard players set $max random 100
function random:uniform
execute if score $out random matches 1..10 if score $halting_point hcz.variable matches 1.. run tag @s add hcz.night_caster
execute if score $out random matches 11 run tag @s add hcz.shrieker
