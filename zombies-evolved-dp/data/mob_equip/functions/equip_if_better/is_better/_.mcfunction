## AUTHOR : Picarrow

# Determine if the new item is better than the old item
# The new item is better if it's of:
# * a higher tier
# * an equal tier, but has more components
# * an equal tier, same # of components, but has less damage
execute if score #_tier_of_new meq._ < #_tier_of_old meq._ run return 0
execute if score #_tier_of_new meq._ > #_tier_of_old meq._ run return 1
execute if score #_component_count_of_new meq._ < #_component_count_of_old meq._ run return 0
execute if score #_component_count_of_new meq._ > #_component_count_of_old meq._ run return 1
return run execute if score #_damage_of_new meq._ < #_damage_of_old meq._
