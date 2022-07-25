### AUTHOR: Picarrow

## --= INTERPRET VARIABLES =--
# $moon_phase
execute store result score $moon_phase hcz.variable run time query day
scoreboard players operation $moon_phase hcz.variable %= $8 hcz.constant
# $day_time
execute store result score $day_time hcz.variable run time query daytime
scoreboard players operation $day_time hcz.variable %= $23999 hcz.constant
# $is_event
execute if score $moon_phase hcz.variable matches ..3 run scoreboard players set $is_event hcz.variable 0
execute if score $moon_phase hcz.variable matches 5.. run scoreboard players set $is_event hcz.variable 0
execute if score $day_time hcz.variable matches ..12999 run scoreboard players set $is_event hcz.variable 0
execute if score $day_time hcz.variable matches 23000.. run scoreboard players set $is_event hcz.variable 0
execute if score $moon_phase hcz.variable matches 4 if score $day_time hcz.variable matches 13000..22999 run scoreboard players set $is_event hcz.variable 1
# $halting_point
execute if score $is_event hcz.variable matches 0 run scoreboard players set $halting_point hcz.variable 0
execute if score $day_time hcz.variable matches ..15499 run scoreboard players set $halting_point hcz.variable 0
execute if score $day_time hcz.variable matches 15501..17999 run scoreboard players set $halting_point hcz.variable 0
execute if score $day_time hcz.variable matches 18001..20499 run scoreboard players set $halting_point hcz.variable 0
execute if score $day_time hcz.variable matches 20501.. run scoreboard players set $halting_point hcz.variable 0
execute if score $is_event hcz.variable matches 1 if score $day_time hcz.variable matches 15500 run scoreboard players set $halting_point hcz.variable 1
execute if score $is_event hcz.variable matches 1 if score $day_time hcz.variable matches 18000 run scoreboard players set $halting_point hcz.variable 2
execute if score $is_event hcz.variable matches 1 if score $day_time hcz.variable matches 20500 run scoreboard players set $halting_point hcz.variable 3

## --= TAG OLD ZOMBIES =--
# Zombies are tagged with hcz.old if they are spawned outside of the event, so we know not to mess with them.
execute if score $is_event hcz.variable matches 0 run tag @e[type=zombie,nbt={IsBaby:0b}] add hcz.old
execute if score $is_event hcz.variable matches 0 run tag @e[type=husk,nbt={IsBaby:0b}] add hcz.old
execute if score $is_event hcz.variable matches 0 run tag @e[type=drowned,nbt={IsBaby:0b}] add hcz.old

## --= TICK EVENT =--
# Ticks the event during the night of a new moon.
execute if score $is_event hcz.variable matches 1 run function hardcore_zombies:tick_event

## --= TICK SPECIAL ZOMBIE STATES =--
# States of eligble zombies are ticked so that they can eventually finish.
execute as @e[scores={hcz.night_caster_damage_timer=0..}] at @s run function hardcore_zombies:tick_night_caster_damage_state
execute as @e[scores={hcz.shrieker_shriek_timer=0..}] at @s run function hardcore_zombies:tick_shrieker_shriek_state

## --= DISPOSE OF NIGHT CASTERS =--
execute unless score $halting_point hcz.variable matches 1.. run kill @e[tag=hcz.night_caster]

## --= CHECK FOR SPECIAL ZOMBIE DEATHS =--
execute as @e[type=item,tag=!item_identity_checked] at @s run function hardcore_zombies:check_item_identity
