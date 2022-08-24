execute if data entity @s {Inventory:[{Slot:103b}]} unless data entity @s {Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin"}]} run function picarrow.zombies_evolved:_private/zombies/jacky/abilities/drop_helmet
execute unless data entity @s {Inventory:[{Slot:103b}]} run item replace entity @s armor.head with minecraft:carved_pumpkin

scoreboard players set @e[type=#picarrow.entity_hit_matching:targets,tag=picarrow.ehm.target] picarrow.ze.jacky_lit_timer 10
execute at @e[type=#picarrow.entity_hit_matching:targets,tag=picarrow.ehm.target] run playsound minecraft:entity.evoker.celebrate hostile @a ~ ~ ~ 1 2 0
