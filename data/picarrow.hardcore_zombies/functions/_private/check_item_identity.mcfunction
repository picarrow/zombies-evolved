tag @s add picarrow.hardcore_zombies.item_identity_checked
execute as @s[nbt={Item:{tag:{Picarrow.HardcoreZombies.BouncerDeath:1b}}}] at @s run function picarrow.hardcore_zombies:_private/zombies/bouncer/entity_dies
execute as @s[nbt={Item:{tag:{Picarrow.HardcoreZombies.JackyDeath:1b}}}] at @s run function picarrow.hardcore_zombies:_private/zombies/jacky/entity_dies
execute as @s[nbt={Item:{tag:{Picarrow.HardcoreZombies.ShriekerDeath:1b}}}] at @s run function picarrow.hardcore_zombies:_private/zombies/shrieker/entity_dies
execute as @s[nbt={Item:{tag:{Picarrow.HardcoreZombies.SpawnerDeath:1b}}}] at @s run function picarrow.hardcore_zombies:_private/zombies/spawner/entity_dies
