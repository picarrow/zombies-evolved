### AUTHOR: Picarrow

# Tags the zombie with hcz.upgraded, so we know not to upgrade them again.
tag @s add hcz.upgraded
# Attributes a random speed to the zombie.
scoreboard players set $min random 230
scoreboard players set $max random 345
function random:uniform
execute store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 0.001 run scoreboard players get $out random
# Enables the zombie to pick up loot.
data merge entity @s {CanPickUpLoot:1b}
