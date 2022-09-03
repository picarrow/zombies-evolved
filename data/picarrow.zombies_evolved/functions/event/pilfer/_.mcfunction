data modify storage picarrow.zombies_evolved:_pilfer.0 Inventory set from entity @s Inventory
data modify storage picarrow.zombies_evolved:_pilfer.0 SelectedItem set from entity @s SelectedItem

scoreboard players set #items picarrow.ze._pilfer 6
scoreboard players reset #i picarrow.ze._pilfer
function picarrow.zombies_evolved:event/pilfer/summon_grab_bag
scoreboard players reset #i picarrow.ze._pilfer
execute as @e[type=minecraft:marker,tag=picarrow.ze._pilfer,distance=..0.1] store result score @s picarrow.ze._pilfer run scoreboard players add #i picarrow.ze._pilfer 1
execute as @e[type=minecraft:marker,tag=picarrow.ze._pilfer,distance=..0.1,sort=random] run function picarrow.zombies_evolved:event/pilfer/process_item

execute unless data storage picarrow.zombies_evolved:_pilfer.1 Item run function picarrow.zombies_evolved:event/pilfer/else
execute if data storage picarrow.zombies_evolved:_pilfer.1 Item run function picarrow.zombies_evolved:event/pilfer/drop_item
