## AUTHOR : Aeldrion

#> random:private/true_uniform_loop
#
# Generates uniform variates until the result is not subject to modulo bias (i.e. x < maxint/size*size where size=max-min+1)
#
# @private
# @within random:true_uniform
# @winthin random:private/true_uniform_loop

# Xn+1 = (aXn + c) mod m
scoreboard players operation #lcg rdm._ *= #lcg_a rdm._
scoreboard players operation #lcg rdm._ += #lcg_c rdm._
scoreboard players operation #lcg rdm._ %= #lcg_m rdm._

# Loop if necessary
execute if score #lcg rdm._ >= #max rdm._ run function random:private/true_uniform_loop
