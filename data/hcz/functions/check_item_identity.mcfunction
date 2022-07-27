### AUTHOR: Picarrow

tag @s add item_identity_checked
execute as @s[nbt={Item:{tag:{hcz.NightCasterDeath:1b}}}] at @s run function hcz:night_caster/on_death
execute as @s[nbt={Item:{tag:{hcz.ShriekerDeath:1b}}}] at @s run function hcz:shrieker/on_death
