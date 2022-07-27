### AUTHOR: Crayola
### ADAPTED BY: Picarrow

scoreboard players remove #dx hcz.dyntp 1
execute if score #dx hcz.dyntp matches 0.. positioned ~1 ~ ~ run function hcz.dyntp:loop/x/positive

execute if score #dx hcz.dyntp matches -1 run tp @s ~ ~ ~
scoreboard players reset #dx hcz.dyntp
