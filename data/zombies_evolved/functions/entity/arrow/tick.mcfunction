## AUTHOR : Picarrow

# Determines which bow the arrow originated from
# A bow ID of -1 indicates that the arrow did not have an origin
execute unless score @s zev.arrow.bow_id = @s zev.arrow.bow_id store result score @s zev.arrow.bow_id on origin run data get entity @s SelectedItem.tag.zombies_evolved.id
execute unless score @s zev.arrow.bow_id = @s zev.arrow.bow_id run scoreboard players set @s zev.arrow.bow_id -1

# Handles the logic for the bow 'bow toy'
execute if entity @s[scores={zev.arrow.bow_id=1},tag=!zev.arrow.impacted,nbt={inGround:1b}] run function zombies_evolved:entity/arrow/impact_from_bow_toy
