### AUTHOR: Picarrow

## --= TAG NEW ZOMBIES AS CANDIDATES =--
# Zombies are tagged with hcz.candidate if they are spawned during the event, so we know we can mess with them.
execute as @e[type=zombie,nbt={IsBaby:0b},tag=!hcz.old] run tag @s add hcz.candidate
execute as @e[type=drowned,nbt={IsBaby:0b},tag=!hcz.old] run tag @s add hcz.candidate
execute as @e[type=husk,nbt={IsBaby:0b},tag=!hcz.old] run tag @s add hcz.candidate

## --= UPGRADE & SPECIALIZE CANDIDATES =--
# Upgrades qualities of all candidates.
execute as @e[tag=hcz.candidate,tag=!hcz.upgraded] run function hardcore_zombies:upgrade_zombie
# Chooses random candidates to be given a class.
execute as @e[tag=hcz.candidate,tag=!hcz.specialized] run function hardcore_zombies:specialize_zombie

## --= STOP EVENT PROGRESSION AT HALTING POINTS =--
execute if score $halting_point hcz.variable matches 1.. unless score $halting_point_began hcz.variable matches 1 run function hardcore_zombies:begin_halting_point

## --= TICK HALTING POINT =--
execute if score $halting_point hcz.variable matches 1.. at @a unless entity @e[tag=hcz.night_caster,distance=..16] run bossbar set minecraft:hcz.night_caster_lives players
execute if score $halting_point hcz.variable matches 1.. as @a at @s if entity @e[tag=hcz.night_caster,distance=..16] run bossbar set minecraft:hcz.night_caster_lives players @s
execute if score $halting_point hcz.variable matches 1.. run effect give @e[tag=hcz.night_caster] minecraft:glowing 10 0 true
