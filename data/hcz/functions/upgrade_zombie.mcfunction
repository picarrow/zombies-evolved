### AUTHOR: Picarrow

tag @s add hcz.upgraded
execute if data entity @s {IsBaby:0b} run function hcz:speed_up_zombie
data merge entity @s {CanPickUpLoot:1b,CanBreakDoors:1b}
scoreboard players set $min hcz.random 1
scoreboard players set $max hcz.random 100
function hcz.random:true_uniform
execute if score $out hcz.random matches 1..10 run tag @s add hcz.night_caster
execute if score $out hcz.random matches 11..20 run tag @s add hcz.shrieker
