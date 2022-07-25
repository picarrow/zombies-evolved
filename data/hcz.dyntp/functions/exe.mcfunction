# AUTHOR: Crayola
# ADAPTED BY: Picarrow

execute if score $dx hcz.variable matches 1.. at @s run function hcz.dyntp:loop/x/positive
execute if score $dx hcz.variable matches ..-1 at @s run function hcz.dyntp:loop/x/negative

execute if score $dy hcz.variable matches 1.. at @s run function hcz.dyntp:loop/y/positive
execute if score $dy hcz.variable matches ..-1 at @s run function hcz.dyntp:loop/y/negative

execute if score $dz hcz.variable matches 1.. at @s run function hcz.dyntp:loop/z/positive
execute if score $dz hcz.variable matches ..-1 at @s run function hcz.dyntp:loop/z/negative
