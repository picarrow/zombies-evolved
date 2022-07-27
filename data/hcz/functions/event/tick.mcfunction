### AUTHOR: Picarrow

execute unless score $event_began hcz.variable matches 1 run function hcz:event/begin
execute as @e[type=#hcz:zombies,tag=!hcz.old,tag=!hcz.upgraded] run function hcz:upgrade_zombie
