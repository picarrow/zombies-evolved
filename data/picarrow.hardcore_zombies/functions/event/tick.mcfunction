### AUTHOR: Picarrow

execute unless score $event_began hcz.variable matches 1 run function picarrow.hardcore_zombies:event/begin
execute as @e[type=#picarrow.hardcore_zombies:zombies,tag=!hcz.old,tag=!hcz.upgraded] run function picarrow.hardcore_zombies:upgrade_zombie
