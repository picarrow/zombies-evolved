execute as @a[tag=picarrow.ehm.player,limit=1] at @s run function picarrow.zombies_evolved:event/pilfer/_
playsound minecraft:entity.evoker.celebrate hostile @a ~ ~ ~ 1 2 0
scoreboard players set @s picarrow.ze.jacky.lit 10