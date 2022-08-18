execute if entity @s[tag=!picarrow.ze.assigned] run function picarrow.zombies_evolved:_private/zombies/shrieker/assign_class

execute if score @s picarrow.ze.shrieker_shriek_timer matches 0.. run function picarrow.zombies_evolved:_private/zombies/shrieker/states/shriek
execute if entity @s[tag=picarrow.ze.shrieker_summoning_warden] unless entity @e[type=warden,distance=..24] if data entity @s {OnGround:1b} run function picarrow.zombies_evolved:_private/zombies/shrieker/abilities/summon_warden
