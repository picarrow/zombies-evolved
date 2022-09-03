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
scoreboard players operation #lcg aeldrion.rdm.random *= #lcg_a aeldrion.rdm.random
scoreboard players operation #lcg aeldrion.rdm.random += #lcg_c aeldrion.rdm.random
scoreboard players operation #lcg aeldrion.rdm.random %= #lcg_m aeldrion.rdm.random

# Loop if necessary
execute if score #lcg aeldrion.rdm.random >= #max aeldrion.rdm.random run function aeldrion.random:private/true_uniform_loop