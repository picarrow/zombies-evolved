## AUTHOR : Picarrow

# Determine the item's tier as it is defined
execute store result score #_tier meq._ run function mob_equip:equip_if_better/eval_tier_by_mainhand/_11 with storage mob_equip:data _.func.equip_if_better.temp.eval

# Return the tier of 1, if the item's tier is not defined
execute if score #_tier meq._ matches 0 run return 1

# Return the tier that is defined
return run scoreboard players get #_tier meq._
