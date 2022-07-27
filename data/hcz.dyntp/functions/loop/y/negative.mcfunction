### AUTHOR: Crayola
### ADAPTED BY: Picarrow

scoreboard players add #dy hcz.dyntp 1
execute if score #dy hcz.dyntp matches ..0 positioned ~ ~-1 ~ run function hcz.dyntp:loop/y/negative

execute if score #dy hcz.dyntp matches 1 run tp @s ~ ~ ~
scoreboard players reset #dy hcz.dyntp
