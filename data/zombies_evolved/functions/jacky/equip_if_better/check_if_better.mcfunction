## AUTHOR: Picarrow

# Determines if the input item is better than the old item
# It's better if it's:
# * of a higher tier
# * of an equal tier, but has more custom item tags
# * of an equal tier, same # of custom item tags, but has less damage
execute store success score #_is_better zev._ if score #_new_tier zev._ > #_old_tier zev._
execute store success score #_is_better zev._ if score #_new_tier zev._ = #_old_tier zev._ if score #_new_custom_tags zev._ > #_old_custom_tags zev._
execute store success score #_is_better zev._ if score #_new_tier zev._ = #_old_tier zev._ if score #_new_custom_tags zev._ = #_old_custom_tags zev._ if score #_new_damage zev._ < #_old_damage zev._
