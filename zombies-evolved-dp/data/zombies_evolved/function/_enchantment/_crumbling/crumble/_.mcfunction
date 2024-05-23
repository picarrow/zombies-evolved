## AUTHOR : Picarrow

execute store result score #_level zev._ run data get entity @s weapon.components."minecraft:enchantments".levels."zombies_evolved:crumbling"
execute if score #_level zev._ matches 1 run data modify storage zombies_evolved:data _.func.ability.crumble.in set value {max_guiders:5b,max_attempts:20b,positions:[[-3,-2],[-3,-1],[-3,0],[-3,1],[-3,2],[-2,-3],[-2,-2],[-2,-1],[-2,0],[-2,1],[-2,2],[-2,3],[-1,-3],[-1,-2],[-1,-1],[-1,0],[-1,1],[-1,2],[-1,3],[0,-3],[0,-2],[0,-1],[0,1],[0,2],[0,3],[1,-3],[1,-2],[1,-1],[1,0],[1,1],[1,2],[1,3],[2,-3],[2,-2],[2,-1],[2,0],[2,1],[2,2],[2,3],[3,-2],[3,-1],[3,0],[3,1],[3,2]]}
execute if score #_level zev._ matches 2 run data modify storage zombies_evolved:data _.func.ability.crumble.in set value {max_guiders:7b,max_attempts:20b,positions:[[-3,-2],[-3,-1],[-3,0],[-3,1],[-3,2],[-2,-3],[-2,-2],[-2,-1],[-2,0],[-2,1],[-2,2],[-2,3],[-1,-3],[-1,-2],[-1,-1],[-1,0],[-1,1],[-1,2],[-1,3],[0,-3],[0,-2],[0,-1],[0,1],[0,2],[0,3],[1,-3],[1,-2],[1,-1],[1,0],[1,1],[1,2],[1,3],[2,-3],[2,-2],[2,-1],[2,0],[2,1],[2,2],[2,3],[3,-2],[3,-1],[3,0],[3,1],[3,2]]}
function zombies_evolved:_ability/crumble/_
