## AUTHOR: Picarrow

# Teleports the helper entity to where it needs to be
data modify entity @s Pos set from storage reltp:_temp temp.pos
data modify entity @s Rotation set from storage reltp:_temp temp.rot

# Teleports the original executor to the helper entity
tp @e[tag=rtp._executor,distance=..0.00001,limit=1] @s

# Destroys the helper entity
kill @s
