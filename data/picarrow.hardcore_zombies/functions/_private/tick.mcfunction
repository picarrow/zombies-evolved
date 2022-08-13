## --= SPECIALIZES ZOMBIES =--
execute as @e[type=#picarrow.hardcore_zombies:zombies,tag=!picarrow.hardcore_zombies.specialized] at @s run function picarrow.hardcore_zombies:_private/assign_classes

## --= MARKS ZOMBIES SPAWNED OUTSIDE OF THE EVENT =--
execute unless score $is_event picarrow.hardcore_zombies.variable matches 1 run tag @e[type=#picarrow.hardcore_zombies:zombies] add picarrow.hardcore_zombies.old

## --= TICKS THE EVENT =--
execute unless score $is_event picarrow.hardcore_zombies.variable matches 1 if predicate picarrow.hardcore_zombies:is_new_moon run function picarrow.hardcore_zombies:_private/event/begin
execute if score $is_event picarrow.hardcore_zombies.variable matches 1 unless predicate picarrow.hardcore_zombies:is_new_moon run function picarrow.hardcore_zombies:_private/event/end
execute if score $is_event picarrow.hardcore_zombies.variable matches 1 run function picarrow.hardcore_zombies:_private/event/tick

## --= TICKS SPECIAL ZOMBIES =--
execute as @e[type=#picarrow.hardcore_zombies:zombies,tag=picarrow.hardcore_zombies.bouncer] at @s run function picarrow.hardcore_zombies:_private/zombies/bouncer/tick
execute as @e[type=#picarrow.hardcore_zombies:zombies,tag=picarrow.hardcore_zombies.jacky] at @s run function picarrow.hardcore_zombies:_private/zombies/jacky/tick
execute as @e[type=#picarrow.hardcore_zombies:zombies,tag=picarrow.hardcore_zombies.shrieker] at @s run function picarrow.hardcore_zombies:_private/zombies/shrieker/tick
execute as @e[type=#picarrow.hardcore_zombies:zombies,tag=picarrow.hardcore_zombies.spawner] at @s run function picarrow.hardcore_zombies:_private/zombies/spawner/tick

## --= DETECTS SPECIAL ZOMBIE DEATHS =--
execute as @e[type=item,tag=!picarrow.hardcore_zombies.item_identity_checked] at @s run function picarrow.hardcore_zombies:_private/check_item_identity
