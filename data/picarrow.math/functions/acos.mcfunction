## OBJECTIVE: picarrow.math.acos
## INPUTS: $x (2 decimal precision)
## OUTPUTS: $out (2 decimal precision)

# a = x^2
scoreboard players operation #a picarrow.math.acos = $x picarrow.math.acos
scoreboard players operation #a picarrow.math.acos *= #a picarrow.math.acos
scoreboard players operation #a picarrow.math.acos /= #100 picarrow.math.const

# b = 1 - a = 1 - x^2
scoreboard players set #b picarrow.math.acos 100
scoreboard players operation #b picarrow.math.acos -= #a picarrow.math.acos

# c = sqrt(b) = sqrt(1 - x^2)
scoreboard players operation $in picarrow.math.sqrt = #b picarrow.math.acos
function picarrow.math:sqrt
scoreboard players operation #c picarrow.math.acos = $out picarrow.math.sqrt

# out = atan2(c,x) = atan2(sqrt(1 - x^2),x) = acos(x)
scoreboard players operation $y picarrow.math.atan2 = #c picarrow.math.acos
scoreboard players operation $x picarrow.math.atan2 = $x picarrow.math.acos
function picarrow.math:atan2
scoreboard players operation $out picarrow.math.acos = $out picarrow.math.atan2
