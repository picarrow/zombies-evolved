tp @s 0.0 0.0 0.0
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get $x picarrow.math.sin
execute at @s run tp @s ^ ^ ^-10
execute store result score $out picarrow.math.sin run data get entity @s Pos[0] 10
kill @s
