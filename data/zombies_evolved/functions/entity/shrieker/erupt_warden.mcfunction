## AUTHOR : Picarrow

summon minecraft:warden ~ ~ ~ {Tags:["zev.shrieker.warden"],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L},"minecraft:is_emerging":{value:{},ttl:85L}}}}
advancement grant @e[gamemode=!spectator,distance=..20] only zombies_evolved:cops_called
kill @s
