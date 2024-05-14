## AUTHOR : Picarrow

summon minecraft:warden ~ ~ ~ {Tags:["zev.shrieker.warden"],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L},"minecraft:is_emerging":{value:{},ttl:85L}}}}
advancement grant @a[gamemode=!spectator,distance=..20] only zombies_evolved:tab/main/cops_called witness_a_shrieker_summon_a_warden

kill @s
