## OBJECTIVE: picarrow.math.edist
## INPUTS: $x1, $y1, $z1, $x2, $y2, $z2 (2 decimal precision)
## OUTPUTS: $out (2 decimal precision)

# Compute distances
scoreboard players operation #dx picarrow.math.edist = $x2 picarrow.math.edist
scoreboard players operation #dx picarrow.math.edist -= $x1 picarrow.math.edist

scoreboard players operation #dy picarrow.math.edist = $y2 picarrow.math.edist
scoreboard players operation #dy picarrow.math.edist -= $y1 picarrow.math.edist

scoreboard players operation #dz picarrow.math.edist = $z2 picarrow.math.edist
scoreboard players operation #dz picarrow.math.edist -= $z1 picarrow.math.edist

# Print errors
execute unless score #dx picarrow.math.edist matches -46340..46340 run tellraw @a ["",{"text":"ERROR (picarrow.math.edist):","color":"dark_red"},{"text":" Distance cannot be greater than 463.40 blocks in any cardinal direction","color":"red"}]
execute unless score #dy picarrow.math.edist matches -46340..46340 run tellraw @a ["",{"text":"ERROR (picarrow.math.edist):","color":"dark_red"},{"text":" Distance cannot be greater than 463.40 blocks in any cardinal direction","color":"red"}]
execute unless score #dz picarrow.math.edist matches -46340..46340 run tellraw @a ["",{"text":"ERROR (picarrow.math.edist):","color":"dark_red"},{"text":" Distance cannot be greater than 463.40 blocks in any cardinal direction","color":"red"}]

# Compute squared distances
scoreboard players operation #dx_squared picarrow.math.edist = #dx picarrow.math.edist
scoreboard players operation #dx_squared picarrow.math.edist *= #dx picarrow.math.edist
scoreboard players operation #dx_squared picarrow.math.edist /= #100 picarrow.math.const

scoreboard players operation #dy_squared picarrow.math.edist = #dy picarrow.math.edist
scoreboard players operation #dy_squared picarrow.math.edist *= #dy picarrow.math.edist
scoreboard players operation #dy_squared picarrow.math.edist /= #100 picarrow.math.const

scoreboard players operation #dz_squared picarrow.math.edist = #dz picarrow.math.edist
scoreboard players operation #dz_squared picarrow.math.edist *= #dz picarrow.math.edist
scoreboard players operation #dz_squared picarrow.math.edist /= #100 picarrow.math.const

# Compute sum of squared distances
scoreboard players set #d_squared picarrow.math.edist 0
scoreboard players operation #d_squared picarrow.math.edist += #dx_squared picarrow.math.edist
scoreboard players operation #d_squared picarrow.math.edist += #dy_squared picarrow.math.edist
scoreboard players operation #d_squared picarrow.math.edist += #dz_squared picarrow.math.edist

# Print errors
execute if score #d_squared picarrow.math.edist matches 21474837.. run tellraw @a ["",{"text":"ERROR (picarrow.math.edist):","color":"dark_red"},{"text":" Distance is too large to be computed","color":"red"}]

# Compute distance
scoreboard players operation $in picarrow.math.sqrt = #d_squared picarrow.math.edist
function picarrow.math:sqrt
scoreboard players operation $out picarrow.math.edist = $out picarrow.math.sqrt
