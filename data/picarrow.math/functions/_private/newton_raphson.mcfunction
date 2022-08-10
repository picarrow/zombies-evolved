# storing last estimate in order to check for convergence
scoreboard players operation #last_estimate picarrow.math.sqrt = #estimate picarrow.math.sqrt

# x_(n + 1) = (x_n + a / x_n) / 2
scoreboard players operation #p1 picarrow.math.sqrt = #in_scaled picarrow.math.sqrt
scoreboard players operation #p1 picarrow.math.sqrt /= #estimate picarrow.math.sqrt
scoreboard players operation #estimate picarrow.math.sqrt += #p1 picarrow.math.sqrt
scoreboard players operation #estimate picarrow.math.sqrt /= #2 picarrow.math.const

# runs until convergence
execute unless score #estimate picarrow.math.sqrt = #last_estimate picarrow.math.sqrt run function picarrow.math:_private/newton_raphson
