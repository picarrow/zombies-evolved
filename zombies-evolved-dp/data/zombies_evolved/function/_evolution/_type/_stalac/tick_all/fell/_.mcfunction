## AUTHOR : Picarrow

attribute @s minecraft:fall_damage_multiplier base set 1
scoreboard players set @s zev.stalac.phase_time 4
playsound minecraft:block.deepslate.place hostile @a ~ ~ ~ 1 0.5 0
playsound minecraft:block.deepslate.place hostile @a ~ ~ ~ 1 0.5 0
playsound minecraft:block.deepslate.place hostile @a ~ ~ ~ 1 0.5 0
tag @s remove zev.stalac.falling
tag @s add zev.stalac.landing
