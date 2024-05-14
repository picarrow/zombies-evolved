## AUTHOR : Picarrow

execute store result storage zombies_evolved:data _.func.advancement.tab.main.darwinism.all_player_criteria_checking.temp.kills int 1 run scoreboard players get #advancement.tab.main.darwinism.criteria_check_loop zev._
function zombies_evolved:_advancement/_tab/_main/_darwinism/all_player_criteria_checking/_1 with storage zombies_evolved:data _.func.advancement.tab.main.darwinism.all_player_criteria_checking.temp
scoreboard players add #advancement.tab.main.darwinism.criteria_check_loop zev._ 1
execute if score #advancement.tab.main.darwinism.criteria_check_loop zev._ matches 201 run scoreboard players set #advancement.tab.main.darwinism.criteria_check_loop zev._ 1
