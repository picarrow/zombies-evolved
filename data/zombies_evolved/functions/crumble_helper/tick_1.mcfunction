## AUTHOR: Picarrow

execute if score @s zev.crumble_helper.age matches 0 run function zombies_evolved:crumble_helper/emit_effects
execute if score @s zev.crumble_helper.age matches 0 run summon minecraft:falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip",vertical_direction:"down"}},Motion:[0d,0d,0d],HurtEntities:1b,FallHurtAmount:6.0f,FallHurtMax:40}
execute if score @s zev.crumble_helper.age matches 7 run summon minecraft:falling_block ~0.5 ~-0.0763 ~0.5 {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"frustum",vertical_direction:"down"}},Motion:[0d,-0.2585d,0d],HurtEntities:1b,FallHurtAmount:6.0f,FallHurtMax:40}
execute if score @s zev.crumble_helper.age matches 10 run summon minecraft:falling_block ~0.5 ~-0.0731 ~0.5 {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"middle",vertical_direction:"down"}},Motion:[0d,-0.3585d,0d],HurtEntities:1b,FallHurtAmount:6.0f,FallHurtMax:40}
execute if score @s zev.crumble_helper.age matches 13 run summon minecraft:falling_block ~0.5 ~-0.3642 ~0.5 {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"middle",vertical_direction:"down"}},Motion:[0d,-0.4527d,0d],HurtEntities:1b,FallHurtAmount:6.0f,FallHurtMax:40}
