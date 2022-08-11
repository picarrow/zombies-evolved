## --= HANDLES CUSTOM SPAWN EGGS =--
execute as @e[tag=picarrow.hardcore_zombies.bouncer,tag=!picarrow.hardcore_zombies.specialized] at @s run function picarrow.hardcore_zombies:_private/zombies/bouncer/assign_class
execute as @e[tag=picarrow.hardcore_zombies.jacky,tag=!picarrow.hardcore_zombies.specialized] at @s run function picarrow.hardcore_zombies:_private/zombies/jacky/assign_class
execute as @e[tag=picarrow.hardcore_zombies.shrieker,tag=!picarrow.hardcore_zombies.specialized] at @s run function picarrow.hardcore_zombies:_private/zombies/shrieker/assign_class
execute as @e[tag=picarrow.hardcore_zombies.spawner,tag=!picarrow.hardcore_zombies.specialized] at @s run function picarrow.hardcore_zombies:_private/zombies/spawner/assign_class

## --= HANDLES THE EVENT =--
# Computes $moon_phase
execute store result score $moon_phase picarrow.hardcore_zombies.variable run time query day
scoreboard players operation $moon_phase picarrow.hardcore_zombies.variable %= #8 picarrow.hardcore_zombies.constant
# Computes $day_time
execute store result score $day_time picarrow.hardcore_zombies.variable run time query daytime
scoreboard players operation $day_time picarrow.hardcore_zombies.variable %= #23999 picarrow.hardcore_zombies.constant
# Computes $is_event
scoreboard players set $is_event picarrow.hardcore_zombies.variable 0
execute if score $moon_phase picarrow.hardcore_zombies.variable matches 4 if score $day_time picarrow.hardcore_zombies.variable matches 13000..22999 run scoreboard players set $is_event picarrow.hardcore_zombies.variable 1
# Zombies are tagged with picarrow.hardcore_zombies.old if they are spawned outside of the event, so we know not to mess with them.
execute if score $is_event picarrow.hardcore_zombies.variable matches 0 run tag @e[type=#picarrow.hardcore_zombies:zombies] add picarrow.hardcore_zombies.old
# Ticks the event if it's time
execute if score $is_event picarrow.hardcore_zombies.variable matches 1 run function picarrow.hardcore_zombies:_private/event/tick
execute if score $is_event picarrow.hardcore_zombies.variable matches 0 run scoreboard players set $event_began picarrow.hardcore_zombies.variable 0

## --= PROGRESSES SPECIAL ZOMBIE STATES =--
execute as @e[tag=picarrow.hardcore_zombies.bouncer] at @s run function picarrow.hardcore_zombies:_private/zombies/bouncer/tick
execute as @e[tag=picarrow.hardcore_zombies.jacky] at @s run function picarrow.hardcore_zombies:_private/zombies/jacky/tick
execute as @e[tag=picarrow.hardcore_zombies.shrieker] at @s run function picarrow.hardcore_zombies:_private/zombies/shrieker/tick
execute as @e[tag=picarrow.hardcore_zombies.spawner] at @s run function picarrow.hardcore_zombies:_private/zombies/spawner/tick

## --= CHECK FOR SPECIAL ZOMBIE DEATHS =--
execute as @e[type=item,tag=!picarrow.hardcore_zombies.item_identity_checked] at @s run function picarrow.hardcore_zombies:_private/check_item_identity
