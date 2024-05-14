## AUTHOR : Picarrow

execute store result score #_is_sending_command_feedback zev._ run gamerule sendCommandFeedback
execute if score #_is_sending_command_feedback zev._ matches 1 run function zombies_evolved:_settings/show/suppress_command_feedback/_1
