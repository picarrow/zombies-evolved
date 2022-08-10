## OBJECTIVE: picarrow.math.asin
## INPUTS: $x (2 decimal precision)
## OUTPUTS: $out (2 decimal precision)

# a = x^2
scoreboard players operation #a picarrow.math.asin = $x picarrow.math.asin
scoreboard players operation #a picarrow.math.asin *= #a picarrow.math.asin
scoreboard players operation #a picarrow.math.asin /= #100 picarrow.math.const

# b = 1 - a = 1 - x^2
scoreboard players set #b picarrow.math.asin 100
scoreboard players operation #b picarrow.math.asin -= #a picarrow.math.asin

# c = sqrt(b) = sqrt(1 - x^2)
scoreboard players operation $in picarrow.math.sqrt = #b picarrow.math.asin
function picarrow.math:sqrt
scoreboard players operation #c picarrow.math.asin = $out picarrow.math.sqrt

# out = atan2(x,c) = atan2(x,sqrt(1 - x^2)) = asin(x)
scoreboard players operation $y picarrow.math.atan2 = $x picarrow.math.asin
scoreboard players operation $x picarrow.math.atan2 = #c picarrow.math.asin
function picarrow.math:atan2
scoreboard players operation $out picarrow.math.asin = $out picarrow.math.atan2
