scoreboard players set #items picarrow.ze._pilfer 6
scoreboard players reset #i picarrow.ze._pilfer
function picarrow.zombies_evolved:event/pilfer/summon_grab_bag
scoreboard players reset #i picarrow.ze._pilfer
execute as @e[type=minecraft:marker,tag=picarrow.ze._pilfer,distance=..0.1] store result score @s picarrow.ze._pilfer run scoreboard players add #i picarrow.ze._pilfer 1
data modify storage picarrow.zombies_evolved:_pilfer Inventory set from entity @s Inventory
data modify storage picarrow.zombies_evolved:_pilfer SelectedItem set from entity @s SelectedItem
scoreboard players reset #passed picarrow.ze._pilfer
execute as @e[type=minecraft:marker,tag=picarrow.ze._pilfer,distance=..0.1,sort=random] run function picarrow.zombies_evolved:event/pilfer/process_item

execute if score #passed picarrow.ze._pilfer matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b},PickupDelay:40s,Motion:[0d,0.3d,0d]}
execute if score #passed picarrow.ze._pilfer matches 1 run data modify entity @e[type=minecraft:item,distance=..0.1,sort=nearest,limit=1] {} merge from storage picarrow.zombies_evolved:_pilfer {}
