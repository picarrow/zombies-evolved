# AUTHOR: Picarrow

kill @s
playsound minecraft:entity.ghast.death hostile @a ~ ~ ~ 1 0.75 0
scoreboard players remove $night_caster_lives hcz.variable 1
execute if score $night_caster_lives hcz.variable matches 2 run bossbar set minecraft:hcz.night_caster_lives value 2
execute if score $night_caster_lives hcz.variable matches 1 run bossbar set minecraft:hcz.night_caster_lives value 1
execute if score $night_caster_lives hcz.variable matches 0 run bossbar set minecraft:hcz.night_caster_lives value 0
execute if score $night_caster_lives hcz.variable matches 0 run function hcz:end_halting_point
