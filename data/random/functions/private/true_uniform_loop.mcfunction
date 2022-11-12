## AUTHOR: Aeldrion

#> random:private/true_uniform_loop
#
# Generates uniform variates until the result is not subject to modulo bias (i.e. x < maxint/size*size where size=max-min+1)
#
# @private
# @within random:true_uniform
# @winthin random:private/true_uniform_loop

# Xn+1 = (aXn + c) mod m
scoreboard players operation #lcg rdm.random *= #lcg_a rdm.random
scoreboard players operation #lcg rdm.random += #lcg_c rdm.random
scoreboard players operation #lcg rdm.random %= #lcg_m rdm.random

# Loop if necessary
execute if score #lcg rdm.random >= #max rdm.random run function random:private/true_uniform_loop
