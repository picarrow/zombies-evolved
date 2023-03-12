## AUTHOR : Picarrow

playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.8 1

tellraw @s ""
tellraw @s {"text":"Zombies Evolved Settings","color":"gold"}

# Debug mode
execute if score $debug_mode zev._ matches 0 run tellraw @s ["",{"text":"Debug Mode","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: ❌\nWhether development feedback is given"}]}}," ",{"text":"❌","color":"red","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/debug_mode"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Enable"}]}}]
execute if score $debug_mode zev._ matches 1 run tellraw @s ["",{"text":"Debug Mode","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: ❌\nWhether development feedback is given"}]}}," ",{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/debug_mode"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Disable"}]}}]

# Natural spawning
execute if score #natural_spawning_lock zev._ matches 1 if score $natural_spawning zev._ matches 0 run tellraw @s ["",{"text":"Natural Spawning","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: ✔\nWhether zombie variants can spawn naturally"}]}}," ",{"text":"❌","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"This setting has been disabled by an addon"}]}}]
execute if score #natural_spawning_lock zev._ matches 1 if score $natural_spawning zev._ matches 1 run tellraw @s ["",{"text":"Natural Spawning","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: ✔\nWhether zombie variants can spawn naturally"}]}}," ",{"text":"✔","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"This setting has been disabled by an addon"}]}}]
execute if score #natural_spawning_lock zev._ matches 0 if score $natural_spawning zev._ matches 0 run tellraw @s ["",{"text":"Natural Spawning","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: ✔\nWhether zombie variants can spawn naturally"}]}}," ",{"text":"❌","color":"red","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/natural_spawning"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Enable"}]}}]
execute if score #natural_spawning_lock zev._ matches 0 if score $natural_spawning zev._ matches 1 run tellraw @s ["",{"text":"Natural Spawning","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: ✔\nWhether zombie variants can spawn naturally"}]}}," ",{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/natural_spawning"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Disable"}]}}]

# Zombie Variant Probabilities
scoreboard players operation #total_chance zev._ = $jacky_chance zev._
scoreboard players operation #total_chance zev._ += $shrieker_chance zev._
scoreboard players operation #total_chance zev._ += $stalac_chance zev._

scoreboard players set #_jacky_chance_displayed zev._ 0
execute if score #jacky_chance_lock zev._ matches 1 store success score #_jacky_chance_displayed zev._ run tellraw @s ["",{"text":"Jacky Chance","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: 3\nGiven the correct spawn conditions, probability that a zombie spawns as a jacky"}]}}," ",{"text":"« ‹ ","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"This setting has been disabled by an addon"}]}},{"score":{"name":"$jacky_chance","objective":"zev._"},"color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"This setting has been disabled by an addon"}]}},{"text":" › »","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"This setting has been disabled by an addon"}]}}]
execute if score #_jacky_chance_displayed zev._ matches 0 if score $jacky_chance zev._ matches 0 if score #total_chance zev._ matches 100 store success score #_jacky_chance_displayed zev._ run tellraw @s ["",{"text":"Jacky Chance","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: 3\nGiven the correct spawn conditions, probability that a zombie spawns as a jacky"}]}}," ",{"text":"« ‹ ","color":"gray"},{"score":{"name":"$jacky_chance","objective":"zev._"}},{"text":" › »","color":"gray"}]
execute if score #_jacky_chance_displayed zev._ matches 0 if score $jacky_chance zev._ matches 0 store success score #_jacky_chance_displayed zev._ run tellraw @s ["",{"text":"Jacky Chance","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: 3\nGiven the correct spawn conditions, probability that a zombie spawns as a jacky"}]}}," ",{"text":"« ‹ ","color":"gray"},{"score":{"name":"$jacky_chance","objective":"zev._"}}," ",{"text":"›","color":"green","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/jacky/add_less"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Add 1%"}]}}," ",{"text":"»","color":"green","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/jacky/add_more"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Add 10%"}]}}]
execute if score #_jacky_chance_displayed zev._ matches 0 if score #total_chance zev._ matches 100 store success score #_jacky_chance_displayed zev._ run tellraw @s ["",{"text":"Jacky Chance","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: 3\nGiven the correct spawn conditions, probability that a zombie spawns as a jacky"}]}}," ",{"text":"«","color":"red","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/jacky/subtract_more"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Subtract 10%"}]}}," ",{"text":"‹","color":"red","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/jacky/subtract_less"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Subtract 1%"}]}}," ",{"score":{"name":"$jacky_chance","objective":"zev._"}},{"text":" › »","color":"gray"}]
execute if score #_jacky_chance_displayed zev._ matches 0 run tellraw @s ["",{"text":"Jacky Chance","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: 3\nGiven the correct spawn conditions, probability that a zombie spawns as a jacky"}]}}," ",{"text":"«","color":"red","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/jacky/subtract_more"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Subtract 10%"}]}}," ",{"text":"‹","color":"red","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/jacky/subtract_less"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Subtract 1%"}]}}," ",{"score":{"name":"$jacky_chance","objective":"zev._"}}," ",{"text":"›","color":"green","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/jacky/add_less"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Add 1%"}]}}," ",{"text":"»","color":"green","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/jacky/add_more"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Add 10%"}]}}]

scoreboard players set #_shrieker_chance_displayed zev._ 0
execute if score #shrieker_chance_lock zev._ matches 1 store success score #_shrieker_chance_displayed zev._ run tellraw @s ["",{"text":"Shrieker Chance","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: 2\nGiven the correct spawn conditions, probability that a zombie spawns as a shrieker"}]}}," ",{"text":"« ‹ ","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"This setting has been disabled by an addon"}]}},{"score":{"name":"$shrieker_chance","objective":"zev._"},"color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"This setting has been disabled by an addon"}]}},{"text":" › »","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"This setting has been disabled by an addon"}]}}]
execute if score #_shrieker_chance_displayed zev._ matches 0 if score $shrieker_chance zev._ matches 0 if score #total_chance zev._ matches 100 store success score #_shrieker_chance_displayed zev._ run tellraw @s ["",{"text":"Shrieker Chance","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: 2\nGiven the correct spawn conditions, probability that a zombie spawns as a shrieker"}]}}," ",{"text":"« ‹ ","color":"gray"},{"score":{"name":"$shrieker_chance","objective":"zev._"}},{"text":" › »","color":"gray"}]
execute if score #_shrieker_chance_displayed zev._ matches 0 if score $shrieker_chance zev._ matches 0 store success score #_shrieker_chance_displayed zev._ run tellraw @s ["",{"text":"Shrieker Chance","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: 2\nGiven the correct spawn conditions, probability that a zombie spawns as a shrieker"}]}}," ",{"text":"« ‹ ","color":"gray"},{"score":{"name":"$shrieker_chance","objective":"zev._"}}," ",{"text":"›","color":"green","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/shrieker/add_less"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Add 1%"}]}}," ",{"text":"»","color":"green","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/shrieker/add_more"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Add 10%"}]}}]
execute if score #_shrieker_chance_displayed zev._ matches 0 if score #total_chance zev._ matches 100 store success score #_shrieker_chance_displayed zev._ run tellraw @s ["",{"text":"Shrieker Chance","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: 2\nGiven the correct spawn conditions, probability that a zombie spawns as a shrieker"}]}}," ",{"text":"«","color":"red","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/shrieker/subtract_more"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Subtract 10%"}]}}," ",{"text":"‹","color":"red","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/shrieker/subtract_less"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Subtract 1%"}]}}," ",{"score":{"name":"$shrieker_chance","objective":"zev._"}},{"text":" › »","color":"gray"}]
execute if score #_shrieker_chance_displayed zev._ matches 0 run tellraw @s ["",{"text":"Shrieker Chance","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: 2\nGiven the correct spawn conditions, probability that a zombie spawns as a shrieker"}]}}," ",{"text":"«","color":"red","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/shrieker/subtract_more"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Subtract 10%"}]}}," ",{"text":"‹","color":"red","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/shrieker/subtract_less"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Subtract 1%"}]}}," ",{"score":{"name":"$shrieker_chance","objective":"zev._"}}," ",{"text":"›","color":"green","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/shrieker/add_less"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Add 1%"}]}}," ",{"text":"»","color":"green","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/shrieker/add_more"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Add 10%"}]}}]

scoreboard players set #_stalac_chance_displayed zev._ 0
execute if score #stalac_chance_lock zev._ matches 1 store success score #_stalac_chance_displayed zev._ run tellraw @s ["",{"text":"Stalac Chance","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: 20\nGiven the correct spawn conditions, probability that a zombie spawns as a stalac"}]}}," ",{"text":"« ‹ ","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"This setting has been disabled by an addon"}]}},{"score":{"name":"$stalac_chance","objective":"zev._"},"color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"This setting has been disabled by an addon"}]}},{"text":" › »","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"This setting has been disabled by an addon"}]}}]
execute if score #_stalac_chance_displayed zev._ matches 0 if score $stalac_chance zev._ matches 0 if score #total_chance zev._ matches 100 store success score #_stalac_chance_displayed zev._ run tellraw @s ["",{"text":"Stalac Chance","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: 20\nGiven the correct spawn conditions, probability that a zombie spawns as a stalac"}]}}," ",{"text":"« ‹ ","color":"gray"},{"score":{"name":"$stalac_chance","objective":"zev._"}},{"text":" › »","color":"gray"}]
execute if score #_stalac_chance_displayed zev._ matches 0 if score $stalac_chance zev._ matches 0 store success score #_stalac_chance_displayed zev._ run tellraw @s ["",{"text":"Stalac Chance","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: 20\nGiven the correct spawn conditions, probability that a zombie spawns as a stalac"}]}}," ",{"text":"« ‹ ","color":"gray"},{"score":{"name":"$stalac_chance","objective":"zev._"}}," ",{"text":"›","color":"green","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/stalac/add_less"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Add 1%"}]}}," ",{"text":"»","color":"green","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/stalac/add_more"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Add 10%"}]}}]
execute if score #_stalac_chance_displayed zev._ matches 0 if score #total_chance zev._ matches 100 store success score #_stalac_chance_displayed zev._ run tellraw @s ["",{"text":"Stalac Chance","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: 20\nGiven the correct spawn conditions, probability that a zombie spawns as a stalac"}]}}," ",{"text":"«","color":"red","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/stalac/subtract_more"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Subtract 10%"}]}}," ",{"text":"‹","color":"red","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/stalac/subtract_less"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Subtract 1%"}]}}," ",{"score":{"name":"$stalac_chance","objective":"zev._"}},{"text":" › »","color":"gray"}]
execute if score #_stalac_chance_displayed zev._ matches 0 run tellraw @s ["",{"text":"Stalac Chance","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: 20\nGiven the correct spawn conditions, probability that a zombie spawns as a stalac"}]}}," ",{"text":"«","color":"red","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/stalac/subtract_more"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Subtract 10%"}]}}," ",{"text":"‹","color":"red","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/stalac/subtract_less"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Subtract 1%"}]}}," ",{"score":{"name":"$stalac_chance","objective":"zev._"}}," ",{"text":"›","color":"green","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/stalac/add_less"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Add 1%"}]}}," ",{"text":"»","color":"green","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/spawn_chance/stalac/add_more"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Add 10%"}]}}]

# Sea Level
execute if score #sea_level_lock zev._ matches 1 run tellraw @s ["",{"text":"Sea Level","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: 62\nHeight that a shrieker can spawn below"}]}}," ",{"text":"« ‹ ","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"This setting has been disabled by an addon"}]}},{"score":{"name":"$sea_level","objective":"zev._"},"color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"This setting has been disabled by an addon"}]}},{"text":" › »","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"This setting has been disabled by an addon"}]}}]
execute if score #sea_level_lock zev._ matches 0 run tellraw @s ["",{"text":"Sea Level","hoverEvent":{"action":"show_text","contents":["",{"text":"Default: 62\nHeight that a shrieker can spawn below"}]}}," ",{"text":"«","color":"red","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/sea_level/subtract_more"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Subtract 10"}]}}," ",{"text":"‹","color":"red","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/sea_level/subtract_less"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Subtract 1"}]}}," ",{"score":{"name":"$sea_level","objective":"zev._"},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set $sea_level zev._ "},"hoverEvent":{"action":"show_text","contents":["",{"text":"Enter value"}]}}," ",{"text":"›","color":"green","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/sea_level/add_less"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Add 1"}]}}," ",{"text":"»","color":"green","clickEvent":{"action":"run_command","value":"/function zombies_evolved:settings/toggle/sea_level/add_more"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Add 10"}]}}]

# Suppress command feedback
execute store result score #command_feedback zev._ run gamerule sendCommandFeedback
execute if score #command_feedback zev._ matches 1 run gamerule sendCommandFeedback false
execute if score #command_feedback zev._ matches 1 run schedule function zombies_evolved:settings/restore_command_feedback 1t

tellraw @s ""
