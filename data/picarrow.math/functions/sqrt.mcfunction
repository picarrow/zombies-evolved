## OBJECTIVE: picarrow.math.sqrt
## INPUTS: $in (2 decimal precision)
## OUTPUTS: $out (2 decimal precision)

execute if score $in picarrow.math.sqrt matches ..-1 run tellraw @a ["",{"text":"ERROR (picarrow.math.sqrt):","color":"dark_red"},{"text":" Input cannot be negative","color":"red"}]
execute if score $in picarrow.math.sqrt matches 21474837.. run tellraw @a ["",{"text":"ERROR (picarrow.math.sqrt):","color":"dark_red"},{"text":" Input cannot be greater than 21474836","color":"red"}]

scoreboard players operation #in_scaled picarrow.math.sqrt = $in picarrow.math.sqrt
scoreboard players operation #in_scaled picarrow.math.sqrt *= #100 picarrow.math.const
scoreboard players set #estimate picarrow.math.sqrt 100
function picarrow.math:_private/newton_raphson
scoreboard players operation $out picarrow.math.sqrt = #estimate picarrow.math.sqrt
