## AUTHOR : Picarrow

execute store result score #_is_sending_command_feedback zev._ run gamerule sendCommandFeedback
execute if score #_is_sending_command_feedback zev._ matches 1 run function zombies_evolved:util/suppress_command_feedback/_1
