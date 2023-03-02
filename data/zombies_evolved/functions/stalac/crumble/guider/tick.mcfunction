## AUTHOR: Picarrow

execute unless score @s zev.crumble_guider.age = @s zev.crumble_guider.age run scoreboard players set @s zev.crumble_guider.age 0
execute align xyz run function zombies_evolved:stalac/crumble/guider/tick_1
execute if score @s zev.crumble_guider.age matches 13 run kill @s
scoreboard players add @s zev.crumble_guider.age 1
