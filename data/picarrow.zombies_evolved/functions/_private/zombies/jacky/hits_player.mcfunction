execute as @a[tag=picarrow.ehm.player,limit=1] at @s run function picarrow.zombies_evolved:_private/zombies/jacky/hits_player_1
scoreboard players set @s picarrow.ze.jacky_lit_timer 10
playsound minecraft:entity.evoker.celebrate hostile @a ~ ~ ~ 1 2 0
