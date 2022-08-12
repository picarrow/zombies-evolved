## OBJECTIVE: picarrow.math.atan2
## INPUTS: $y, $x (2 decimal precision)
## OUTPUTS: $out (2 decimal precision)

summon minecraft:marker ~ ~ ~ {Tags:["picarrow.math.atan2_dummy"]}
execute as @e[tag=picarrow.math.atan2_dummy] run function picarrow.math:_private/atan2
