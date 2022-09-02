tag @s add picarrow.ze.specialized

scoreboard players set $min aeldrion.rdm.random 1
scoreboard players set $max aeldrion.rdm.random 100
function aeldrion.random:true_uniform
execute if score $out aeldrion.rdm.random matches 1..3 run tag @s add picarrow.ze.jacky
execute if score $out aeldrion.rdm.random matches 4..5 run tag @s add picarrow.ze.shrieker
execute if score $out aeldrion.rdm.random matches 6..100 run tag @s add picarrow.ze.generic
