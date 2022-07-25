# AUTHOR: Picarrow

scoreboard players set $is_halting_point hcz.variable 1
gamerule doDaylightCycle false
scoreboard players operation $night_caster_lives hcz.variable = $halting_point hcz.variable
playsound minecraft:block.bell.resonate master @a ~ ~ ~ 1 0.5 1
