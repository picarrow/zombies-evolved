## AUTHOR : Picarrow

data modify storage zombies_evolved:data _.func."evolution.shrieker.assign".temp.entity_data set from entity @s
data modify storage zombies_evolved:data _.func."evolution.shrieker.assign".temp.entity_data.ArmorItems[3] set value {id:"minecraft:sculk_shrieker"}
data modify storage zombies_evolved:data _.func."evolution.shrieker.assign".temp.entity_data.ArmorDropChances[3] set value 0f
data modify storage zombies_evolved:data _.func."evolution.shrieker.assign".temp.entity_data merge value {CustomName:'{"text":"Shrieker"}',CanPickUpLoot:0b}

# Record new evolution type state into tags
data modify storage zombies_evolved:data _.func."evolution.shrieker.assign".temp.entity_data.Tags append value "zev.shrieker"
data modify storage zombies_evolved:data _.func."evolution.shrieker.assign".temp.entity_data.Tags append value "zev.evolved"

data modify storage zombies_evolved:data _.func."evolution.shrieker.assign".temp.entity_data.Tags append value "zev._self"

data modify entity @s {} merge from storage zombies_evolved:data _.func."evolution.shrieker.assign".temp.entity_data

data modify storage zombies_evolved:data _.func."evolution.shrieker.assign".temp set value {}

execute summon minecraft:text_display run function zombies_evolved:_evolution/init_nametag_hider/_
tag @s remove zev._self
