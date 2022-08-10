tp @s 0.0 0.0 0.0
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get $x picarrow.math.cos
execute at @s run tp @s ^ ^ ^10
execute store result score $out picarrow.math.cos run data get entity @s Pos[2] 10
kill @s
