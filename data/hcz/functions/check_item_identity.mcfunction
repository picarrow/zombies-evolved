### AUTHOR: Picarrow

tag @s add item_identity_checked
execute as @s[nbt={Item:{tag:{hcz.JackyDeath:1b}}}] at @s run function hcz:jacky/on_death
execute as @s[nbt={Item:{tag:{hcz.ShriekerDeath:1b}}}] at @s run function hcz:shrieker/on_death
execute as @s[nbt={Item:{tag:{hcz.SwarmerDeath:1b}}}] at @s run function hcz:swarmer/on_death
