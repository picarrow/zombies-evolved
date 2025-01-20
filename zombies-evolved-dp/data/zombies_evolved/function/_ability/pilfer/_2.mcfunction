## AUTHOR : Picarrow

# Equip the stolen item, if there is one, onto the attacker, and store the discarded
# item.
execute if data storage zombies_evolved:data _.func."ability.pilfer".temp.item_to_steal run function zombies_evolved:_ability/pilfer/_21

# Drop the discarded item, if there is one.
execute if data storage zombies_evolved:data _.func."ability.pilfer".temp.item_to_drop at @s run function zombies_evolved:_ability/pilfer/_22
