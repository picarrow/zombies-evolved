## AUTHOR : Picarrow

# Teleports the marker to where it needs to be
data modify entity @s {} merge from storage reltp:data temp.final

# Teleports the subject to the marker
tp @e[tag=rtp._subject,distance=..0.00001,limit=1] @s

# Kills the marker
kill @s
