## AUTHOR: Picarrow

data modify entity @s Pos set from storage reltp:0 temp.pos
data modify entity @s Rotation set from storage reltp:0 temp.rot
tp @e[tag=rtp.0,distance=..0.00001,limit=1] @s
kill @s
