## OBJECTIVE: picarrow.math.cos
## INPUTS: $x (2 decimal precision)
## OUTPUTS: $out (2 decimal precision)

summon minecraft:marker ~ ~ ~ {Tags:["picarrow.math.cos_dummy"]}
execute as @e[tag=picarrow.math.cos_dummy] run function picarrow.math:_private/cos
