## OBJECTIVE: picarrow.math.sin
## INPUTS: $x (2 decimal precision)
## OUTPUTS: $out (2 decimal precision)

summon minecraft:marker ~ ~ ~ {Tags:["picarrow.math.sin_dummy"]}
execute as @e[tag=picarrow.math.sin_dummy] run function picarrow.math:_private/sin
