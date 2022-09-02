execute unless entity @s[tag=picarrow.ze.assigned] run function picarrow.zombies_evolved:assign/shrieker

execute if score @s picarrow.ze.shrieker.shriek matches 0.. run function picarrow.zombies_evolved:tick/shrieker/shriek
execute if entity @s[tag=picarrow.ze.shrieker.enraged] unless entity @e[type=minecraft:warden,distance=..24] if data entity @s {OnGround:1b} run function picarrow.zombies_evolved:event/summon_warden/_
