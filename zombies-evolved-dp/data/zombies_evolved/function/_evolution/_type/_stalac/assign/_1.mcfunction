## AUTHOR : Picarrow

function zombies_evolved:_evolution/_type/_stalac/find_hang_point/_
execute if entity @s[tag=!zev.placer.evolved_zombie.stalac] if data storage zombies_evolved:data _.func."evolution.stalac.find_hang_point".out{valid:1b} run return 1
execute if entity @s[tag=zev.placer.evolved_zombie.stalac] if data storage zombies_evolved:data _.func."evolution.stalac.find_hang_point".out{height:1,valid:1b} run return 1
