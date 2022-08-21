execute unless entity @s[tag=picarrow.ze.specialized] run function picarrow.zombies_evolved:_private/specialize_zombie

execute if entity @s[tag=picarrow.ze.shrieker] run function picarrow.zombies_evolved:_private/zombies/shrieker/tick
execute if entity @s[tag=picarrow.ze.jacky] run function picarrow.zombies_evolved:_private/zombies/jacky/tick
execute unless entity @s[tag=picarrow.ze.generic] run data merge entity @s {InWaterTime:-1}
