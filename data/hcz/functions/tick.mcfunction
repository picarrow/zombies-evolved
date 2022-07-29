### AUTHOR: Picarrow

## --= HANDLES CUSTOM SPAWN EGGS =--
execute as @e[tag=hcz.bouncer,tag=!hcz.specialized] at @s run function hcz:bouncer/assign_class
execute as @e[tag=hcz.jacky,tag=!hcz.specialized] at @s run function hcz:jacky/assign_class
execute as @e[tag=hcz.shrieker,tag=!hcz.specialized] at @s run function hcz:shrieker/assign_class
execute as @e[tag=hcz.spawner,tag=!hcz.specialized] at @s run function hcz:spawner/assign_class

## --= HANDLES THE EVENT =--
# Computes $moon_phase
execute store result score $moon_phase hcz.variable run time query day
scoreboard players operation $moon_phase hcz.variable %= #8 hcz.constant
# Computes $day_time
execute store result score $day_time hcz.variable run time query daytime
scoreboard players operation $day_time hcz.variable %= #23999 hcz.constant
# Computes $is_event
scoreboard players set $is_event hcz.variable 0
execute if score $moon_phase hcz.variable matches 4 if score $day_time hcz.variable matches 13000..22999 run scoreboard players set $is_event hcz.variable 1
# Zombies are tagged with hcz.old if they are spawned outside of the event, so we know not to mess with them.
execute if score $is_event hcz.variable matches 0 run tag @e[type=#hcz:zombies] add hcz.old
# Ticks the event if it's time
execute if score $is_event hcz.variable matches 1 run function hcz:event/tick
execute if score $is_event hcz.variable matches 0 run scoreboard players set $event_began hcz.variable 0

## --= PROGRESSES SPECIAL ZOMBIE STATES =--
execute as @e[tag=hcz.bouncer] at @s run function hcz:bouncer/tick
execute as @e[tag=hcz.jacky] at @s run function hcz:jacky/tick
execute as @e[tag=hcz.shrieker] at @s run function hcz:shrieker/tick
execute as @e[tag=hcz.spawner] at @s run function hcz:spawner/tick

## --= CHECK FOR SPECIAL ZOMBIE DEATHS =--
execute as @e[type=item,tag=!item_identity_checked] at @s run function hcz:check_item_identity
