## AUTHOR: Picarrow

execute unless data storage reltp:pos relative:1b run data modify storage reltp:0 temp.pos set value [0d,0d,0d]
execute if data storage reltp:pos {relative:1b} run data modify storage reltp:0 temp.pos set from entity @s Pos
data modify storage reltp:0 temp.rot set from entity @s Rotation

# compute new x coord
execute store result score #_coord rtp._ run data get storage reltp:0 temp.pos[0] 10
execute store result score #_delta rtp._ run data get storage reltp:pos offset[0] 10
scoreboard players operation #_coord rtp._ += #_delta rtp._
execute store result storage reltp:0 temp.pos[0] double 0.1 run scoreboard players get #_coord rtp._

# compute new y coord
execute store result score #_coord rtp._ run data get storage reltp:0 temp.pos[1] 10
execute store result score #_delta rtp._ run data get storage reltp:pos offset[1] 10
scoreboard players operation #_coord rtp._ += #_delta rtp._
execute store result storage reltp:0 temp.pos[1] double 0.1 run scoreboard players get #_coord rtp._

# compute new z coord
execute store result score #_coord rtp._ run data get storage reltp:0 temp.pos[2] 10
execute store result score #_delta rtp._ run data get storage reltp:pos offset[2] 10
scoreboard players operation #_coord rtp._ += #_delta rtp._
execute store result storage reltp:0 temp.pos[2] double 0.1 run scoreboard players get #_coord rtp._

# locate
tag @s add rtp.0
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["rtp.1"]}
execute at @s as @e[type=minecraft:marker,tag=rtp.1,distance=..0.00001,limit=1] run function reltp:teleport/locate
tag @s remove rtp.0

# destroy temp storage
data remove storage reltp:0 temp
