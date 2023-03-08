## AUTHOR : Picarrow
##
## INPUT  : executor
##          -> any zombie
##          zombies_evolved:equip_if_better
##          -> item (nbt of the item to equip)
##
## OUTPUT : zombies_evolved:equip_if_better
##          -> success (whether the item was equipped)
##          -> old_item (nbt of the item that was replaced, if any)

execute at @s run function zombies_evolved:jacky/equip_if_better/_1
