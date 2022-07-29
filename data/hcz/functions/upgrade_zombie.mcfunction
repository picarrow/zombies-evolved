### AUTHOR: Picarrow

tag @s add hcz.upgraded
execute if data entity @s {IsBaby:0b} run function hcz:speed_up_zombie
scoreboard players set $min hcz.random 1
scoreboard players set $max hcz.random 100
function hcz.random:true_uniform
execute if score $out hcz.random matches 1..10 run tag @s add hcz.bouncer
execute if score $out hcz.random matches 11..20 run tag @s add hcz.jacky
execute if score $out hcz.random matches 21..30 run tag @s add hcz.shrieker
execute if score $out hcz.random matches 31..40 run tag @s add hcz.spawner
