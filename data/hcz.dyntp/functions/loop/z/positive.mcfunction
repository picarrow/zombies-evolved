# AUTHOR: Crayola
# ADAPTED BY: Picarrow

scoreboard players remove $dz hcz.variable 1
execute if score $dz hcz.variable matches 0.. positioned ~ ~ ~1 run function hcz.dyntp:loop/z/positive

execute if score $dz hcz.variable matches -1 run tp @s ~ ~ ~
scoreboard players reset $dz hcz.variable
