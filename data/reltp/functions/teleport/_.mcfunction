## AUTHOR: Picarrow

# Computes the position to send the executor to
# - Establish origin
#   When tag relative is set to 1b, uses the position of the executor, rather than the world spawn
execute unless data storage reltp:args {relative:1b} run data modify storage reltp:_temp temp.pos set value [0d,0d,0d]
execute if data storage reltp:args {relative:1b} run data modify storage reltp:_temp temp.pos set from entity @s Pos
# - Offset from origin
# -- x
execute store result score #_coord rtp._ run data get storage reltp:_temp temp.pos[0] 10
execute store result score #_delta rtp._ run data get storage reltp:args offset[0] 10
scoreboard players operation #_coord rtp._ += #_delta rtp._
execute store result storage reltp:_temp temp.pos[0] double 0.1 run scoreboard players get #_coord rtp._
# -- y
execute store result score #_coord rtp._ run data get storage reltp:_temp temp.pos[1] 10
execute store result score #_delta rtp._ run data get storage reltp:args offset[1] 10
scoreboard players operation #_coord rtp._ += #_delta rtp._
execute store result storage reltp:_temp temp.pos[1] double 0.1 run scoreboard players get #_coord rtp._
# -- z
execute store result score #_coord rtp._ run data get storage reltp:_temp temp.pos[2] 10
execute store result score #_delta rtp._ run data get storage reltp:args offset[2] 10
scoreboard players operation #_coord rtp._ += #_delta rtp._
execute store result storage reltp:_temp temp.pos[2] double 0.1 run scoreboard players get #_coord rtp._

# Stores the rotation of the executor so that it can be respected
data modify storage reltp:_temp temp.rot set from entity @s Rotation

# Uses a helper entity to move the executor to the new position
tag @s add rtp._executor
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["rtp._helper"]}
execute at @s as @e[type=minecraft:marker,tag=rtp._helper,distance=..0.00001,limit=1] run function reltp:teleport/move
tag @s remove rtp._executor

# Destroys the temp storage
data remove storage reltp:_temp temp
