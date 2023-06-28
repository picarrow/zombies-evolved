## AUTHOR : Picarrow
##
## ENTCON : the entity to teleport
## POSCON : inconsequential
##
## INPUT  : > func.teleport.in.origin
##          * func.teleport.in.offset
## OUTPUT : none

# Clears the temp data
data remove storage reltp:data temp

# Stores the subject's NBT for efficient access
data modify storage reltp:data temp.subject set from entity @s

# Determines the location at which to apply the offset
execute store success score #_is_relative rtp._ unless data storage reltp:data func.teleport.in.origin
execute if score #_is_relative rtp._ matches 0 run data modify storage reltp:data temp.final.Pos set from storage reltp:data func.teleport.in.origin
execute if score #_is_relative rtp._ matches 1 run data modify storage reltp:data temp.final.Pos set from storage reltp:data temp.subject.Pos

# Computes the location with the offset applied
# * x offset
execute store result score #_coord rtp._ run data get storage reltp:data temp.final.Pos[0] 10
execute store result score #_delta rtp._ run data get storage reltp:data func.teleport.in.offset[0] 10
scoreboard players operation #_coord rtp._ += #_delta rtp._
execute store result storage reltp:data temp.final.Pos[0] double 0.1 run scoreboard players get #_coord rtp._
# * y offset
execute store result score #_coord rtp._ run data get storage reltp:data temp.final.Pos[1] 10
execute store result score #_delta rtp._ run data get storage reltp:data func.teleport.in.offset[1] 10
scoreboard players operation #_coord rtp._ += #_delta rtp._
execute store result storage reltp:data temp.final.Pos[1] double 0.1 run scoreboard players get #_coord rtp._
# * z offset
execute store result score #_coord rtp._ run data get storage reltp:data temp.final.Pos[2] 10
execute store result score #_delta rtp._ run data get storage reltp:data func.teleport.in.offset[2] 10
scoreboard players operation #_coord rtp._ += #_delta rtp._
execute store result storage reltp:data temp.final.Pos[2] double 0.1 run scoreboard players get #_coord rtp._

# Stores the rotation of the subject so that it can be respected
data modify storage reltp:data temp.final.Rotation set from storage reltp:data temp.subject.Rotation

# Moves the subject to the computed location, using a marker
tag @s add rtp._subject
execute at @s summon minecraft:marker run function reltp:teleport/move
tag @s remove rtp._subject
