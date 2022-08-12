execute if score $is_event picarrow.hardcore_zombies.variable matches 0 run function picarrow.hardcore_zombies:_private/event/end
execute as @e[type=#picarrow.hardcore_zombies:zombies,tag=!picarrow.hardcore_zombies.old,tag=!picarrow.hardcore_zombies.upgraded] run function picarrow.hardcore_zombies:_private/event/upgrade_zombie
