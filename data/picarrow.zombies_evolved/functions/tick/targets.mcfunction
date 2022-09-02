# Specializes if not yet specialized
execute unless entity @s[tag=picarrow.ze.specialized] run function picarrow.zombies_evolved:specialize/_

# Ticks specialized entities
execute if entity @s[tag=picarrow.ze.jacky] run function picarrow.zombies_evolved:tick/jacky/_
execute if entity @s[tag=picarrow.ze.shrieker] run function picarrow.zombies_evolved:tick/shrieker/_
execute unless entity @s[tag=picarrow.ze.generic] run data merge entity @s {InWaterTime:-1}
