scoreboard players add #i picarrow.ze._pilfer 1
summon minecraft:marker ~ ~ ~ {Tags:["picarrow.ze._pilfer"]}
execute unless score #i picarrow.ze._pilfer = #items picarrow.ze._pilfer run function picarrow.zombies_evolved:event/pilfer/summon_grab_bag
