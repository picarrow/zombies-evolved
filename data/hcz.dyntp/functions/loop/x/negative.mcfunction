### AUTHOR: Crayola
### ADAPTED BY: Picarrow

scoreboard players add #dx hcz.dyntp 1
execute if score #dx hcz.dyntp matches ..0 positioned ~-1 ~ ~ run function hcz.dyntp:loop/x/negative

execute if score #dx hcz.dyntp matches 1 run tp @s ~ ~ ~
scoreboard players reset #dx hcz.dyntp
