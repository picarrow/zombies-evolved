### AUTHOR: Picarrow

data modify entity @s ArmorDropChances set value [0f,0f,0f,0f]
item replace entity @s armor.feet with minecraft:chainmail_boots
item replace entity @s armor.legs with minecraft:chainmail_leggings
item replace entity @s armor.chest with minecraft:netherite_chestplate
item replace entity @s armor.head with minecraft:carved_pumpkin
data merge entity @s {CustomName:'',DeathLootTable:"hcz:entities/night_caster"}
tag @s add hcz.specialized
