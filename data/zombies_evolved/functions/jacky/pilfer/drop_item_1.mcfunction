## AUTHOR : Picarrow

data remove storage zombies_evolved:_temp root.item_to_drop.Slot
data modify entity @s Item merge from storage zombies_evolved:_temp root.item_to_drop
tag @s remove zev._dummy
