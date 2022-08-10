### AUTHOR: Picarrow

tag @s add item_identity_checked
execute as @s[nbt={Item:{tag:{hcz.BouncerDeath:1b}}}] at @s run function picarrow.hardcore_zombies:bouncer/entity_dies
execute as @s[nbt={Item:{tag:{hcz.JackyDeath:1b}}}] at @s run function picarrow.hardcore_zombies:jacky/entity_dies
execute as @s[nbt={Item:{tag:{hcz.ShriekerDeath:1b}}}] at @s run function picarrow.hardcore_zombies:shrieker/entity_dies
execute as @s[nbt={Item:{tag:{hcz.SpawnerDeath:1b}}}] at @s run function picarrow.hardcore_zombies:spawner/entity_dies
