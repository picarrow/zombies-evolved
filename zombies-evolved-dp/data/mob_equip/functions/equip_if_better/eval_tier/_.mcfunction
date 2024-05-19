## AUTHOR : Picarrow

# Return the item's tier, if there is an item
execute if data storage mob_equip:data _.func.equip_if_better.temp.item_to_eval.id run return run function mob_equip:equip_if_better/eval_tier/_1

# Return a tier of 0, if there isn't an item
return 0
