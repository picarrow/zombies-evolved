## AUTHOR : Picarrow

function zombies_evolved:_evolution/_type/_shrieker/tick_all/emit_shriek/_
effect give @e[distance=..40,gamemode=!spectator] minecraft:darkness 12 0 true
execute if entity @s[scores={zev.shrieker.warning=1}] run playsound minecraft:entity.warden.nearby_close hostile @a[distance=..40] ~ ~ ~ 1 1 0
execute if entity @s[scores={zev.shrieker.warning=2}] run playsound minecraft:entity.warden.nearby_closer hostile @a[distance=..40] ~ ~ ~ 1 1 0
execute if entity @s[scores={zev.shrieker.warning=3..}] run playsound minecraft:entity.warden.nearby_closest hostile @a[distance=..40] ~ ~ ~ 1 1 0
tag @s[scores={zev.shrieker.warning=4..}] add zev.shrieker.enraged
tag @s remove zev.shrieker.shrieking
