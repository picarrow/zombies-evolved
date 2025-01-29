## AUTHOR : Picarrow

data modify storage zombies_evolved:data _.func."ability.pilfer".temp.item_to_drop_extra.components set value {}
data modify storage zombies_evolved:data _.func."ability.pilfer".temp.item_to_drop_extra merge from storage zombies_evolved:data _.func."ability.pilfer".temp.item_to_drop
function zombies_evolved:_ability/pilfer/_221 with storage zombies_evolved:data _.func."ability.pilfer".temp.item_to_drop_extra
