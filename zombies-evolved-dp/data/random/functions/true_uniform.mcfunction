## AUTHOR : Aeldrion

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
scoreboard players operation #size rdm._ = $max rdm._
scoreboard players operation #size rdm._ -= $min rdm._
scoreboard players add #size rdm._ 1

# Calculate maximum authorised value
scoreboard players set #max rdm._ 2147483647
scoreboard players operation #max rdm._ /= #size rdm._
scoreboard players operation #max rdm._ *= #size rdm._

# Loop
function random:private/true_uniform_loop
scoreboard players operation $out rdm._ = #lcg rdm._

# Get within desired range
scoreboard players operation $out rdm._ %= #size rdm._
scoreboard players operation $out rdm._ += $min rdm._
