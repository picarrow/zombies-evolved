## AUTHOR : Picarrow

execute unless data storage mob_equip:data _.func.equip_if_better.in.ignore_slots.feet if items entity @s weapon.mainhand #mob_equip:equippable_as_boots run return 1
execute unless data storage mob_equip:data _.func.equip_if_better.in.ignore_slots.legs if items entity @s weapon.mainhand #mob_equip:equippable_as_leggings run return 2
execute unless data storage mob_equip:data _.func.equip_if_better.in.ignore_slots.chest if items entity @s weapon.mainhand #mob_equip:equippable_as_chestplate run return 3
execute unless data storage mob_equip:data _.func.equip_if_better.in.ignore_slots.head if items entity @s weapon.mainhand #mob_equip:equippable_as_helmet run return 4
execute unless data storage mob_equip:data _.func.equip_if_better.in.ignore_slots.mainhand run return 5
