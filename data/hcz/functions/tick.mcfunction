### AUTHOR: Picarrow

## --= INTERPRET VARIABLES =--
# $moon_phase
execute store result score $moon_phase hcz.variable run time query day
scoreboard players operation $moon_phase hcz.variable %= $8 hcz.constant
# $day_time
execute store result score $day_time hcz.variable run time query daytime
scoreboard players operation $day_time hcz.variable %= $23999 hcz.constant
# $is_event
scoreboard players set $is_event hcz.variable 0
execute if score $moon_phase hcz.variable matches 4 if score $day_time hcz.variable matches 13000..22999 run scoreboard players set $is_event hcz.variable 1
# $halting_point
scoreboard players set $halting_point hcz.variable 0
execute if score $is_event hcz.variable matches 1 if score $day_time hcz.variable matches 15500 run scoreboard players set $halting_point hcz.variable 1
execute if score $is_event hcz.variable matches 1 if score $day_time hcz.variable matches 18000 run scoreboard players set $halting_point hcz.variable 2
execute if score $is_event hcz.variable matches 1 if score $day_time hcz.variable matches 20500 run scoreboard players set $halting_point hcz.variable 3

## --= TAG OLD ZOMBIES =--
# Zombies are tagged with hcz.old if they are spawned outside of the event, so we know not to mess with them.
execute if score $is_event hcz.variable matches 0 run tag @e[type=zombie] add hcz.old
execute if score $is_event hcz.variable matches 0 run tag @e[type=husk] add hcz.old
execute if score $is_event hcz.variable matches 0 run tag @e[type=drowned] add hcz.old

## --= HANDLE THE EVENT =--
execute if score $is_event hcz.variable matches 1 unless score $event_began hcz.variable matches 1 run function hcz:event/begin
execute if score $is_event hcz.variable matches 1 run function hcz:event/tick

## --= HANDLE HALTING POINTS =--
execute if score $halting_point hcz.variable matches 1.. unless score $halting_point_began hcz.variable matches 1 run function hcz:halting_point/begin
execute if score $halting_point hcz.variable matches 1.. run function hcz:halting_point/tick

## --= TICK SPECIAL ZOMBIE STATES=--
execute as @e[scores={hcz.night_caster_damage_timer=0..}] at @s run function hcz:night_caster/tick_damage_state
execute as @e[scores={hcz.shrieker_shriek_timer=0..}] at @s run function hcz:shrieker/tick_shriek_state

## --= CHECK FOR SPECIAL ZOMBIE DEATHS =--
execute as @e[type=item,tag=!item_identity_checked] at @s run function hcz:check_item_identity

## --= KILL EXTRANEOUS NIGHT CASTERS =--
execute if score $halting_point hcz.variable matches 0 run kill @e[tag=hcz.night_caster,tag=!hcz.night_caster_ignore_death,nbt=!{PersistenceRequired:1b}]

## --= HANDLES CUSTOM SPAWN EGGS =--
execute as @e[tag=hcz.night_caster,tag=!hcz.specialized] at @s run function hcz:night_caster/assign_class
execute as @e[tag=hcz.shrieker,tag=!hcz.specialized] at @s run function hcz:shrieker/assign_class
