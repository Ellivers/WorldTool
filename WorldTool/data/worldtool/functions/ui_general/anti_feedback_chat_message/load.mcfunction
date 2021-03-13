# Called by most ui functions
# This function is for removing the "Executed 12 commands from blahblahblah" message
# It remembers if you had the sendCommandFeedback message on before

execute if score $playUISounds worldtool matches 1.. at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5

execute unless entity @s[tag=nospaceplzthx] run tellraw @s "\n"
tag @s remove nospaceplzthx
execute store result score #SCFdefault worldtool run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
execute unless score #SCFdefault worldtool matches 0 run schedule function worldtool:ui_general/anti_feedback_chat_message/tick 1t
