## AUTHOR : Picarrow

$data modify storage zombies_evolved:data _.func.ability.pilfer.temp.item_to_steal set from storage zombies_evolved:data _.func.ability.pilfer.temp.grab_bag[$(index)]
execute unless data storage zombies_evolved:data _.func.ability.pilfer.temp.item_to_steal.Slot run return run data get storage zombies_evolved:data _.func.ability.pilfer.temp.player.SelectedItemSlot
return run data get storage zombies_evolved:data _.func.ability.pilfer.temp.item_to_steal.Slot
