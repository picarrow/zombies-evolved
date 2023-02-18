## AUTHOR: Picarrow
## INPUT: reltp:args (storage)

# Dictates the origin of the transformation
# When the value of nbt tag 'relative' is:
# * 0b - uses the world spawn
# * 1b - uses the position of the executor
execute unless data storage reltp:args {relative:1b} run data modify storage reltp:_temp temp.Pos set value [0d,0d,0d]
execute if data storage reltp:args {relative:1b} run data modify storage reltp:_temp temp.Pos set from entity @s Pos

# Computes the position to send the executor to
# * x
execute store result score #_coord rtp._ run data get storage reltp:_temp temp.Pos[0] 10
execute store result score #_delta rtp._ run data get storage reltp:args offset[0] 10
scoreboard players operation #_coord rtp._ += #_delta rtp._
execute store result storage reltp:_temp temp.Pos[0] double 0.1 run scoreboard players get #_coord rtp._
# * y
execute store result score #_coord rtp._ run data get storage reltp:_temp temp.Pos[1] 10
execute store result score #_delta rtp._ run data get storage reltp:args offset[1] 10
scoreboard players operation #_coord rtp._ += #_delta rtp._
execute store result storage reltp:_temp temp.Pos[1] double 0.1 run scoreboard players get #_coord rtp._
# * z
execute store result score #_coord rtp._ run data get storage reltp:_temp temp.Pos[2] 10
execute store result score #_delta rtp._ run data get storage reltp:args offset[2] 10
scoreboard players operation #_coord rtp._ += #_delta rtp._
execute store result storage reltp:_temp temp.Pos[2] double 0.1 run scoreboard players get #_coord rtp._

# Stores the rotation of the executor so that it can be respected
data modify storage reltp:_temp temp.Rotation set from entity @s Rotation

# Uses a helper entity to move the executor to the new position
tag @s add rtp._executor
execute at @s summon minecraft:marker run function reltp:teleport/move
tag @s remove rtp._executor

# Destroys the temp storage
data remove storage reltp:_temp temp
