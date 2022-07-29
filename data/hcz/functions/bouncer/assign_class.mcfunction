### AUTHOR: Picarrow

tag @s add hcz.specialized
data modify entity @s ArmorDropChances[3] set value 0f
item replace entity @s armor.head with minecraft:slime_block
data merge entity @s {CustomName:'',DeathLootTable:"hcz:entities/bouncer"}
