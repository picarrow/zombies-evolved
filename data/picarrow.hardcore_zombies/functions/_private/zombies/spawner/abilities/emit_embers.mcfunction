execute if entity @s[type=minecraft:zombie,predicate=!picarrow.hardcore_zombies:is_baby] if entity @a[distance=..16] positioned ~ ~1.75 ~ run function picarrow.hardcore_zombies:_private/zombies/spawner/abilities/emit_embers_1
execute if entity @s[type=minecraft:zombie,predicate=picarrow.hardcore_zombies:is_baby] if entity @a[distance=..16] positioned ~ ~0.9375 ~ run function picarrow.hardcore_zombies:_private/zombies/spawner/abilities/emit_embers_2
execute if entity @s[type=minecraft:husk,predicate=!picarrow.hardcore_zombies:is_baby] if entity @a[distance=..16] positioned ~ ~1.875 ~ run function picarrow.hardcore_zombies:_private/zombies/spawner/abilities/emit_embers_1
execute if entity @s[type=minecraft:husk,predicate=picarrow.hardcore_zombies:is_baby] if entity @a[distance=..16] positioned ~ ~1 ~ run function picarrow.hardcore_zombies:_private/zombies/spawner/abilities/emit_embers_2
execute if entity @s[type=minecraft:drowned,predicate=!picarrow.hardcore_zombies:is_baby] if entity @a[distance=..16] positioned ~ ~1.75 ~ run function picarrow.hardcore_zombies:_private/zombies/spawner/abilities/emit_embers_1
execute if entity @s[type=minecraft:drowned,predicate=picarrow.hardcore_zombies:is_baby] if entity @a[distance=..16] positioned ~ ~0.9375 ~ run function picarrow.hardcore_zombies:_private/zombies/spawner/abilities/emit_embers_2
