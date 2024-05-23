## AUTHOR : Picarrow
##        :
## ENTCON : ---
## POSCON : The location at which to focus the effect
##  INPUT : Guiders, positions, attempts
##        :
## EFFECT : Attempts to spawn crumble guiders at randomly chosen deltas
## OUTPUT : ---

# Clear temp data
data remove storage zombies_evolved:_ _.func.crumble.temp

# Set defaults
execute unless data storage zombies_evolved:_ _.func.crumble.in.guiders run data modify storage zombies_evolved:_ _.func.crumble.in.guiders set value 3
execute unless data storage zombies_evolved:_ _.func.crumble.in.positions run data modify storage zombies_evolved:_ _.func.crumble.in.positions set value [[-1,-1],[-1,0],[-1,1],[0,-1],[0,0],[0,1],[1,-1],[1,0],[1,1]]
execute unless data storage zombies_evolved:_ _.func.crumble.in.attempts run data modify storage zombies_evolved:_ _.func.crumble.in.attempts set value 9

# Attempt to spawn guiders
scoreboard players set #_guiders zev._ 0
scoreboard players set #_attempts zev._ 0
execute store result score #_max_guiders zev._ run data get storage zombies_evolved:_ _.func.crumble.in.guiders
execute store result score #_max_attempts zev._ run data get storage zombies_evolved:_ _.func.crumble.in.attempts
data modify storage zombies_evolved:_ _.func.crumble.temp.positions set from storage zombies_evolved:_ _.func.crumble.in.positions
execute store result score #_positions_left zev._ if data storage zombies_evolved:_ _.func.crumble.temp.positions[]
function zombies_evolved:_ability/crumble/_1
