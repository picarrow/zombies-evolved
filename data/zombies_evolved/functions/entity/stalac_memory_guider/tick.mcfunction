## AUTHOR : Picarrow

data modify storage zombies_evolved:data root.copy_stalac set from entity @s data.memory
execute on vehicle run data modify entity @s {} merge from storage zombies_evolved:data root.copy_stalac
kill @s
