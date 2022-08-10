execute store result entity @s Pos[0] double 0.01 run scoreboard players get $y picarrow.math.atan2
execute store result entity @s Pos[2] double 0.01 run scoreboard players get $x picarrow.math.atan2
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
execute store result score $out picarrow.math.atan2 run data get entity @s Rotation[0] -100
kill @s
