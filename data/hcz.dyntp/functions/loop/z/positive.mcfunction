### AUTHOR: Crayola
### ADAPTED BY: Picarrow

scoreboard players remove #dz hcz.dyntp 1
execute if score #dz hcz.dyntp matches 0.. positioned ~ ~ ~1 run function hcz.dyntp:loop/z/positive

execute if score #dz hcz.dyntp matches -1 run tp @s ~ ~ ~
scoreboard players reset #dz hcz.dyntp
