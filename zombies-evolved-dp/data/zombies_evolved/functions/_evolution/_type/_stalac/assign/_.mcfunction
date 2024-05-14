## AUTHOR : Picarrow

data modify storage zombies_evolved:data _.func.evolution.stalac.assign.temp.entity_data set from entity @s
data modify storage zombies_evolved:data _.func.evolution.stalac.assign.temp.entity_data.ArmorItems[3] set value {id:"minecraft:dripstone_block"}
data modify storage zombies_evolved:data _.func.evolution.stalac.assign.temp.entity_data.ArmorDropChances[3] set value 0f
data modify storage zombies_evolved:data _.func.evolution.stalac.assign.temp.entity_data merge value {CustomName:'{"text":"Stalac"}',CanPickUpLoot:0b}

execute unless predicate zombies_evolved:has_vehicle if function zombies_evolved:_evolution/_type/_stalac/assign/_1 run function zombies_evolved:_evolution/_type/_stalac/assign/_2

data modify entity @s {} merge from storage zombies_evolved:data _.func.evolution.stalac.assign.temp.entity_data

tag @s add zev.stalac
tag @s add zev.evolved
