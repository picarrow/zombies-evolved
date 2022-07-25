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
execute if score $halting_point hcz.variable matches 1.. unless score $is_halting_point hcz.variable matches 1 run function hardcore_zombies:trigger_halting_point

## --= RENDER BOSS BAR FOR PLAYERS NEARBY NIGHT CASTER =--
execute as @a at @s if score $is_halting_point hcz.variable matches 1 if entity @e[tag=hcz.night_caster,distance=..16] run bossbar set minecraft:hcz.night_caster_lives players @s
execute as @a at @s if score $is_halting_point hcz.variable matches 1 unless entity @e[tag=hcz.night_caster,distance=..16] run bossbar set minecraft:hcz.night_caster_lives players
