## AUTHOR : Picarrow

# Stalacs should dismount vehicles in order to hang
# MC-264022 makes the following command not work
# ride @s[predicate=zombies_evolved:has_vehicle] dismount

# Teleport the stalac to the hang point
data modify storage zombies_evolved:data _.func.evolution.stalac.assign.temp.entity_data.Pos set from storage zombies_evolved:data _.func.evolution.stalac.find_hang_point.out.hang_point

# Offset the stalac downwards in respect to its height
execute store result score #_y zev._ run data get storage zombies_evolved:data _.func.evolution.stalac.assign.temp.entity_data.Pos[1] 1000
function zombies_evolved:_evolution/_type/_stalac/assign/_21
execute store result storage zombies_evolved:data _.func.evolution.stalac.assign.temp.entity_data.Pos[1] double 0.001 run scoreboard players get #_y zev._

# Flip stalac upside down, remove physics from it, and silence it
data modify storage zombies_evolved:data _.func.evolution.stalac.assign.temp.entity_data merge value {CustomName:'{"text":"Grumm"}',NoAI:1b,Silent:1b}

# Record new hanging state into tags
data modify storage zombies_evolved:data _.func.evolution.stalac.assign.temp.entity_data.Tags append value "zev.stalac.hanging"
