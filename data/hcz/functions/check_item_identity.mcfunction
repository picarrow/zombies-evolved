### AUTHOR: Picarrow

tag @s add item_identity_checked
execute as @s[nbt={Item:{tag:{hcz.BouncerDeath:1b}}}] at @s run function hcz:bouncer/entity_dies
execute as @s[nbt={Item:{tag:{hcz.JackyDeath:1b}}}] at @s run function hcz:jacky/entity_dies
execute as @s[nbt={Item:{tag:{hcz.ShriekerDeath:1b}}}] at @s run function hcz:shrieker/entity_dies
execute as @s[nbt={Item:{tag:{hcz.SpawnerDeath:1b}}}] at @s run function hcz:spawner/entity_dies
