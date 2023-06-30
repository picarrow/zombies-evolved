## AUTHOR : Picarrow

# As a consequence of MC-220658, the stalactite tip must drop as an item
# Otherwise, there won't be an audio cue when the stalactites land
# The intended behavior is that pointed dripstone doesn't drop
execute if score @s zev.crumble_guider.age matches 1 run particle minecraft:block minecraft:dripstone_block ~ ~-0.05 ~ 0.2 0 0.2 1 50 normal
execute if score @s zev.crumble_guider.age matches 1 run playsound minecraft:block.pointed_dripstone.land block @a ~ ~ ~ 2.25 1 0
execute if score @s zev.crumble_guider.age matches 1 run summon minecraft:falling_block ~ ~ ~ {Tags:["zev.crumbling_stalactite"],BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip",vertical_direction:"down"}},Motion:[0d,0d,0d],HurtEntities:1b,FallHurtAmount:6.0f,FallHurtMax:40,DropItem:1b}
execute if score @s zev.crumble_guider.age matches 8 run summon minecraft:falling_block ~ ~-0.0763 ~ {Tags:["zev.crumbling_stalactite"],BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"frustum",vertical_direction:"down"}},Motion:[0d,-0.2585d,0d],HurtEntities:1b,FallHurtAmount:6.0f,FallHurtMax:40,DropItem:0b}
execute if score @s zev.crumble_guider.age matches 11 run summon minecraft:falling_block ~ ~-0.0731 ~ {Tags:["zev.crumbling_stalactite"],BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"middle",vertical_direction:"down"}},Motion:[0d,-0.3585d,0d],HurtEntities:1b,FallHurtAmount:6.0f,FallHurtMax:40,DropItem:0b}
execute if score @s zev.crumble_guider.age matches 14 run summon minecraft:falling_block ~ ~-0.3642 ~ {Tags:["zev.crumbling_stalactite"],BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"middle",vertical_direction:"down"}},Motion:[0d,-0.4527d,0d],HurtEntities:1b,FallHurtAmount:6.0f,FallHurtMax:40,DropItem:0b}
