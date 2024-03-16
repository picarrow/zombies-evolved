## AUTHOR : Picarrow

tag @s remove zev.stalac.landing

data modify storage zombies_evolved:data root.copy_stalac set from entity @s
data remove storage zombies_evolved:data root.copy_stalac.CustomName
execute summon minecraft:zombie run data modify entity @s {} merge from storage zombies_evolved:data root.copy_stalac
teleport @s ~ ~-1000 ~
execute store result score #_doMobLoot zev._ run gamerule doMobLoot
gamerule doMobLoot false
kill @s
execute if score #_doMobLoot zev._ matches 1 run gamerule doMobLoot true
