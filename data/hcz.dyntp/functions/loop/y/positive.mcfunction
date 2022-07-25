# AUTHOR: Crayola
# ADAPTED BY: Picarrow

scoreboard players remove $dx hcz.variable 1
execute if score $dx hcz.variable matches 0.. positioned ~1 ~ ~ run function hcz.dyntp:loop/x/positive

execute if score $dx hcz.variable matches -1 run tp @s ~ ~ ~
scoreboard players reset $dx hcz.variable
