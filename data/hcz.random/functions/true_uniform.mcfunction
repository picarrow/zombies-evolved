### AUTHOR: Aeldrion
### ADAPTED BY: Picarrow

#> random:true_uniform
#
# Generates a random number between two given bounds using a linear congruential generator
# Adjusts for modulo bias: if the range is small, or if max-min almost divides 2147483648, the bias should not be noticeable and random:uniform should be used instead for efficiency
#
# @public
# @input
#	score $min random
#		The minimum value (inclusive)
#	score $max random
#		The maximum value (inclusive)
# @output
#	score $out random
#		An integer in range [min, max]

# Calculate size of range
scoreboard players operation #size hcz.random = $max hcz.random
scoreboard players operation #size hcz.random -= $min hcz.random
scoreboard players add #size hcz.random 1

# Calculate maximum authorised value
scoreboard players set #max hcz.random 2147483647
scoreboard players operation #max hcz.random /= #size hcz.random
scoreboard players operation #max hcz.random *= #size hcz.random

# Loop
function hcz.random:private/true_uniform_loop
scoreboard players operation $out hcz.random = #lcg hcz.random

# Get within desired range
scoreboard players operation $out hcz.random %= #size hcz.random
scoreboard players operation $out hcz.random += $min hcz.random
