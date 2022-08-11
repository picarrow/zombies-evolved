### AUTHOR: Picarrow

execute unless score $event_began hcz.variable matches 1 run function picarrow.hardcore_zombies:_private/event/begin
execute as @e[type=#picarrow.hardcore_zombies:zombies,tag=!hcz.old,tag=!hcz.upgraded] run function picarrow.hardcore_zombies:_private/event/upgrade_zombie
