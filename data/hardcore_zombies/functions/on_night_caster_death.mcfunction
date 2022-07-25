# AUTHOR: Picarrow

kill @s
playsound minecraft:entity.ghast.death hostile @a ~ ~ ~ 1 0.75 0
scoreboard players remove $night_caster_lives hcz.variable 1
execute if score $night_caster_lives hcz.variable matches ..0 run function hardcore_zombies:end_halting_point
