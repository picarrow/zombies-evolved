execute unless score $event_began picarrow.hardcore_zombies.variable matches 1 run function picarrow.hardcore_zombies:_private/event/begin
execute as @e[type=#picarrow.hardcore_zombies:zombies,tag=!picarrow.hardcore_zombies.old,tag=!picarrow.hardcore_zombies.upgraded] run function picarrow.hardcore_zombies:_private/event/upgrade_zombie
