## AUTHOR : Picarrow
##
## ENTCON : a mob that has NBTs 'HandItems' and 'ArmorItems'
## POSCON : inconsequential
##
## INPUT  : > in.item - NBT of the item stack to equip
##          * in.ignore_slots.mainhand - if key is present ignore the 'mainhand' slot
##          * in.ignore_slots.feet - if key is present ignore the 'feet' slot
##          * in.ignore_slots.legs - if key is present ignore the 'legs' slot
##          * in.ignore_slots.chest - if key is present ignore the 'chest' slot
##          * in.ignore_slots.head - if key is present ignore the 'head' slot
## OUTPUT : > out.equipped - whether an item stack was equipped
##          * out.item - NBT of the item stack that was replaced

execute at @s run function mob_equip:equip_if_better/_1
