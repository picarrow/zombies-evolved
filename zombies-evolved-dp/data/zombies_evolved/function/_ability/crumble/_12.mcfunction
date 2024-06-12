## AUTHOR : Picarrow

$data modify storage zombies_evolved:data _.func.ability.crumble.temp.position set from storage zombies_evolved:data _.func.ability.crumble.temp.positions[$(index)]
$data remove storage zombies_evolved:data _.func.ability.crumble.temp.positions[$(index)]
