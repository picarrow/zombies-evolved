tag @s add picarrow.hardcore_zombies.specialized
data modify entity @s ArmorDropChances[3] set value 0f
item replace entity @s armor.head with minecraft:sculk_shrieker
data merge entity @s {CustomName:'',DeathLootTable:"picarrow.hardcore_zombies:entities/shrieker"}
