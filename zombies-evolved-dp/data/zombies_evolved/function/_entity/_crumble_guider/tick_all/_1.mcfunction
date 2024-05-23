## AUTHOR : Picarrow

# As a consequence of MC-220658, the stalactite tip must drop as an item
# Otherwise, there won't be an audio cue when the stalactites land
# The intended behavior is that pointed dripstone doesn't drop
$summon minecraft:falling_block ~ ~ ~ {Tags:$(tags),BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip",vertical_direction:"down"}},Motion:[0d,0d,0d],HurtEntities:1b,FallHurtAmount:6.0f,FallHurtMax:40,DropItem:1b}

particle minecraft:block{block_state:{Name:"minecraft:dripstone_block"}} ~ ~-0.05 ~ 0.2 0 0.2 1 50 normal
playsound minecraft:block.pointed_dripstone.land block @a ~ ~ ~ 2.25 1 0
