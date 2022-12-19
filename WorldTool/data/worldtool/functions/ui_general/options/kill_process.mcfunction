# Called by worldtool:ui/queue/message and worldtool:ui_general/options/menu
# Kills the currently running process

tellraw @s[tag=!wt.no_message] {"nbt":"Translation.\"info.killed_process\"","storage": "worldtool:storage"}
tag @s remove wt.no_message

scoreboard players set $processRunning worldtool 0
bossbar set worldtool:progress visible false

execute unless entity 35c1ab68-9d4c-11eb-a8b3-0242ac130003 run function worldtool:technical/queue/move

execute as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 at @s run function worldtool:process_end/end

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load
