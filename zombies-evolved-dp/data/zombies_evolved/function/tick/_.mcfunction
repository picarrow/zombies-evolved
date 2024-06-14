## AUTHOR : Picarrow

# Update advancements.
advancement grant @a only zombies_evolved:tab/main/root just_exist
function zombies_evolved:_advancement/_tab/_main/_construction_zone/tick/_
function zombies_evolved:_advancement/_tab/_main/_darwinism/all_player_criteria_checking/_

# Update spawn-egg placers.
execute if entity @e[tag=zev.placer.active,limit=1] run function zombies_evolved:tick/_1

# Handle evolved zombie natural spawning.
execute if score $natural_spawning zev._ matches 0 as @e[type=#zombies_evolved:can_evolve,tag=!zev.evolved] run function zombies_evolved:_evolution/_type/_generic/assign/_
execute if score $natural_spawning zev._ matches 1 as @e[type=#zombies_evolved:can_evolve,tag=!zev.evolved] run function zombies_evolved:_evolution/evolve_naturally/_

# Update evolved zombies.
function zombies_evolved:_evolution/_type/_jacky/tick_all/_
function zombies_evolved:_evolution/_type/_shrieker/tick_all/_
function zombies_evolved:_evolution/_type/_stalac/tick_all/_

# Kill nametag hiders that are without vehicles.
kill @e[tag=zev.nametag_hider,predicate=!zombies_evolved:has_vehicle]

# Update crumble guiders.
data modify storage zombies_evolved:data _.func.entity.crumble_guider.tick_all.in set value {tags:["zev.stalac_stalactite"]}
function zombies_evolved:_entity/_crumble_guider/tick_all/_
