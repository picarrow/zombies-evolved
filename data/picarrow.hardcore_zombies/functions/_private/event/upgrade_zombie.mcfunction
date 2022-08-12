tag @s add picarrow.hardcore_zombies.upgraded
scoreboard players set $min hcz.random 1
scoreboard players set $max hcz.random 100
function hcz.random:true_uniform
execute if score $out hcz.random matches 1..10 run tag @s add picarrow.hardcore_zombies.bouncer
execute if score $out hcz.random matches 11..20 run tag @s add picarrow.hardcore_zombies.jacky
execute if score $out hcz.random matches 21..30 run tag @s add picarrow.hardcore_zombies.shrieker
execute if score $out hcz.random matches 31..40 run tag @s add picarrow.hardcore_zombies.spawner
execute if data entity @s {IsBaby:0b} run function picarrow.hardcore_zombies:_private/event/speed_up_zombie
