execute unless entity @s[tag=picarrow.ze.assigned] run function picarrow.zombies_evolved:_private/zombies/jacky/assign_class

execute if score @s picarrow.ze.jacky_lit_timer matches 0.. run function picarrow.zombies_evolved:_private/zombies/jacky/states/lit
