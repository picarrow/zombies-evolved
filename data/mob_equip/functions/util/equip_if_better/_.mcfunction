## AUTHOR : Picarrow
##
## ENTCON : a mob that has NBTs 'HandItems' and 'ArmorItems'
## POSCON : undefined
##
## INPUT  : > in.item - NBT of the item to equip
##          * in.ignore_slots.mainhand - whether to ignore the 'mainhand' slot
##          * in.ignore_slots.feet - whether to ignore the 'feet' slot
##          * in.ignore_slots.legs - whether to ignore the 'legs' slot
##          * in.ignore_slots.chest - whether to ignore the 'chest' slot
##          * in.ignore_slots.head - whether to ignore the 'head' slot
## OUTPUT : > out.equipped: whether an item was equipped
##          * out.item: NBT of the item that was replaced

execute at @s run function mob_equip:util/equip_if_better/_1
