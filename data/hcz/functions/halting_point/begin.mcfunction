### AUTHOR: Picarrow

# Mark the halting point as initialized
scoreboard players set $halting_point_began hcz.variable 1

gamerule doDaylightCycle false
scoreboard players operation $night_caster_lives hcz.variable = $halting_point hcz.variable
bossbar add hcz.night_caster_lives "Night Caster"
execute if score $halting_point hcz.variable matches 1 run bossbar set minecraft:hcz.night_caster_lives max 1
execute if score $halting_point hcz.variable matches 2 run bossbar set minecraft:hcz.night_caster_lives max 2
execute if score $halting_point hcz.variable matches 3 run bossbar set minecraft:hcz.night_caster_lives max 3
execute if score $night_caster_lives hcz.variable matches 1 run bossbar set minecraft:hcz.night_caster_lives value 1
execute if score $night_caster_lives hcz.variable matches 2 run bossbar set minecraft:hcz.night_caster_lives value 2
execute if score $night_caster_lives hcz.variable matches 3 run bossbar set minecraft:hcz.night_caster_lives value 3
bossbar set minecraft:hcz.night_caster_lives color purple
bossbar set minecraft:hcz.night_caster_lives style notched_6
playsound minecraft:block.bell.resonate master @a ~ ~ ~ 1 0.5 1
