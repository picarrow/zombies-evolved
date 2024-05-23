## AUTHOR : Picarrow

# Return the item's defined tier, which depends on on the desired slot
execute if score #_desired_slot meq._ matches 1..4 run return run function mob_equip:equip_if_better/eval_tier/_111 with storage mob_equip:data _.func.equip_if_better.temp.item_to_eval
execute if score #_desired_slot meq._ matches 5 run return run function mob_equip:equip_if_better/eval_tier/_112 with storage mob_equip:data _.func.equip_if_better.temp.item_to_eval
