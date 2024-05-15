## AUTHOR : Picarrow

data modify storage zombies_evolved:data _.func.evolution.stalac.assign.temp.entity_data set from entity @s
data modify storage zombies_evolved:data _.func.evolution.stalac.assign.temp.entity_data.ArmorItems[3] set value {id:"minecraft:dripstone_block"}
data modify storage zombies_evolved:data _.func.evolution.stalac.assign.temp.entity_data.ArmorDropChances[3] set value 0f
data modify storage zombies_evolved:data _.func.evolution.stalac.assign.temp.entity_data merge value {CustomName:'{"text":"Stalac"}',CanPickUpLoot:0b}

execute unless predicate zombies_evolved:has_vehicle if function zombies_evolved:_evolution/_type/_stalac/assign/_1 run function zombies_evolved:_evolution/_type/_stalac/assign/_2

# Record new evolution type state into tags
data modify storage zombies_evolved:data _.func.evolution.stalac.assign.temp.entity_data.Tags append value "zev.stalac"
data modify storage zombies_evolved:data _.func.evolution.stalac.assign.temp.entity_data.Tags append value "zev.evolved"

data modify storage zombies_evolved:data _.func.evolution.stalac.assign.temp.entity_data.Tags append value "zev._self"

data modify entity @s {} merge from storage zombies_evolved:data _.func.evolution.stalac.assign.temp.entity_data

data modify storage zombies_evolved:data _.func.evolution.stalac.assign.temp set value {}

execute positioned as @s summon minecraft:text_display run function zombies_evolved:_evolution/init_nametag_hider/_
tag @s remove zev._self
