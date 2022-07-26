### AUTHOR: Picarrow

## --= UPGRADE NEW ZOMBIES =--
execute as @e[type=zombie,tag=!hcz.old,tag=!hcz.upgraded] run function hcz:upgrade_zombie
execute as @e[type=drowned,tag=!hcz.old,tag=!hcz.upgraded] run function hcz:upgrade_zombie
execute as @e[type=husk,tag=!hcz.old,tag=!hcz.upgraded] run function hcz:upgrade_zombie

##### Remember whether they were able to pick up items or not. Give them the respective ability when the event ends.

## --= MODIFY SPEED OF ZOMBIES =--
scoreboard players operation $zombie_speed hcz.variable = $day_time hcz.variable
scoreboard players remove $zombie_speed hcz.variable 13000
scoreboard players operation $zombie_speed hcz.variable *= $10 hcz.constant
scoreboard players operation $zombie_speed hcz.variable /= $652 hcz.constant
scoreboard players add $zombie_speed hcz.variable 230

execute if score $day_time hcz.variable > $20500 hcz.constant run scoreboard players operation $zombie_speed_1 hcz.variable = $day_time hcz.variable
execute if score $day_time hcz.variable > $20500 hcz.constant run scoreboard players remove $zombie_speed_1 hcz.variable 20500
execute if score $day_time hcz.variable > $20500 hcz.constant run scoreboard players operation $zombie_speed_1 hcz.variable *= $10 hcz.constant
execute if score $day_time hcz.variable > $20500 hcz.constant run scoreboard players operation $zombie_speed_1 hcz.variable /= $217 hcz.constant
execute if score $day_time hcz.variable > $20500 hcz.constant run scoreboard players set $zombie_speed hcz.variable 345
execute if score $day_time hcz.variable > $20500 hcz.constant run scoreboard players operation $zombie_speed hcz.variable -= $zombie_speed_1 hcz.variable

# need to include drowned and husks
execute if score $day_time hcz.variable <= $20500 hcz.constant as @e[type=zombie,nbt={IsBaby:0b}] run function hcz:speed_up_zombies
execute if score $day_time hcz.variable > $20500 hcz.constant as @e[type=zombie,nbt={IsBaby:0b}] run function hcz:slow_down_zombies
