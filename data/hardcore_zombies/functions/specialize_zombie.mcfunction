### AUTHOR: Picarrow

tag @s add hcz.specialized
scoreboard players set $min random 1
scoreboard players set $max random 100
function random:uniform
execute as @s at @s if score $out random matches 1..10 if score $halting_point hcz.variable matches 1.. run function hardcore_zombies:assign_night_caster
execute as @s at @s if score $out random matches 11 run function hardcore_zombies:assign_shrieker
