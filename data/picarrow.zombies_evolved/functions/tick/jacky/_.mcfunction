execute unless entity @s[tag=picarrow.ze.assigned] run function picarrow.zombies_evolved:assign/jacky

execute if score @s picarrow.ze.jacky.lit matches 0.. run function picarrow.zombies_evolved:tick/jacky/lit
