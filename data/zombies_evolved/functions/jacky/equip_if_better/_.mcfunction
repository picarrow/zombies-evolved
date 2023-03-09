## AUTHOR : Picarrow
##
## INPUT  : executor: zombie
##          storage: zombies_evolved:equip_if_better
##          -> in.item (nbt of the item to equip)
##
## OUTPUT : zombies_evolved:equip_if_better
##          -> out.success (whether the new item was equipped)
##          -> out.item (nbt of the old item, if any)

execute at @s run function zombies_evolved:jacky/equip_if_better/_1
