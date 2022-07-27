### AUTHOR: Aeldrion
### ADAPTED BY: Picarrow

#> random:private/true_uniform_loop
#
# Generates uniform variates until the result is not subject to modulo bias (i.e. x < maxint/size*size where size=max-min+1)
#
# @private
# @within random:true_uniform
# @winthin random:private/true_uniform_loop

# Xn+1 = (aXn + c) mod m
scoreboard players operation #lcg hcz.random *= #lcg_a hcz.random
scoreboard players operation #lcg hcz.random += #lcg_c hcz.random
scoreboard players operation #lcg hcz.random %= #lcg_m hcz.random

# Loop if necessary
execute if score #lcg hcz.random >= #max hcz.random run function hcz.random:private/true_uniform_loop
