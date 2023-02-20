## AUTHOR: Picarrow

execute unless score @s zev.crumble_helper.age = @s zev.crumble_helper.age run scoreboard players set @s zev.crumble_helper.age 0
execute align xyz run function zombies_evolved:crumble_helper/tick_1
execute if score @s zev.crumble_helper.age matches 13 run kill @s
scoreboard players add @s zev.crumble_helper.age 1
