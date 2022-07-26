### AUTHOR: Picarrow

execute at @a unless entity @e[tag=hcz.night_caster,distance=..16] run bossbar set minecraft:hcz.night_caster_lives players
execute as @a at @s if entity @e[tag=hcz.night_caster,distance=..16] run bossbar set minecraft:hcz.night_caster_lives players @s
effect give @e[tag=hcz.night_caster] minecraft:glowing 3 0 true
