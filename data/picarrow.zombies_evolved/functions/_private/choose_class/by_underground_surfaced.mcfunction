tag @s add picarrow.ze.specialized

scoreboard players set $min aeldrion.rdm.random 1
scoreboard players set $max aeldrion.rdm.random 100
function aeldrion.random:true_uniform
execute if score $out aeldrion.rdm.random matches 1..2 run tag @s add picarrow.ze.shrieker
execute if score $out aeldrion.rdm.random matches 3..100 run tag @s add picarrow.ze.generic
