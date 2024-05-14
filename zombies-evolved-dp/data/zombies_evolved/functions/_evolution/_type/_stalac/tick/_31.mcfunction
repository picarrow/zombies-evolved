## AUTHOR : Picarrow

tag @s remove zev.stalac.landing

data modify storage zombies_evolved:data root.copy_stalac set from entity @s
data remove storage zombies_evolved:data root.copy_stalac.CustomName
execute if entity @s[type=minecraft:zombie] run summon minecraft:zombie ~ ~ ~ {Passengers:[{id:"minecraft:marker",Tags:["zev.stalac_memory_guider"]}]}
execute if entity @s[type=minecraft:husk] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:marker",Tags:["zev.stalac_memory_guider"]}]}
execute if entity @s[type=minecraft:drowned] run summon minecraft:drowned ~ ~ ~ {Passengers:[{id:"minecraft:marker",Tags:["zev.stalac_memory_guider"]}]}
data modify entity @e[type=minecraft:marker,tag=zev.stalac_memory_guider,distance=..0.00001,limit=1] data.memory set from storage zombies_evolved:data root.copy_stalac
teleport @s ~ ~-1000 ~
execute store result score #_doMobLoot zev._ run gamerule doMobLoot
gamerule doMobLoot false
kill @s
execute if score #_doMobLoot zev._ matches 1 run gamerule doMobLoot true
