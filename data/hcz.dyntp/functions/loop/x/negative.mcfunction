# AUTHOR: Crayola
# ADAPTED BY: Picarrow

scoreboard players add $dx hcz.variable 1
execute if score $dx hcz.variable matches ..0 positioned ~-1 ~ ~ run function hcz.dyntp:loop/x/negative

execute if score $dx hcz.variable matches 1 run tp @s ~ ~ ~
scoreboard players reset $dx hcz.variable
