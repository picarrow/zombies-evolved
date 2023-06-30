## AUTHOR : Picarrow

scoreboard players add @s zev.crumble_guider.age 1
execute align xyz positioned ~0.5 ~ ~0.5 run function zombies_evolved:entity/crumble_guider/generate
execute if score @s zev.crumble_guider.age matches 14 run kill @s
