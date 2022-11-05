# Called by worldtool:technical/common/check/positions
# Displays an error

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run kill @s

scoreboard players set #success worldtool 0

function worldtool:ui/clear_chat
tellraw @s {"nbt":"Translation.\"error.pos1_duplicates\"","storage": "worldtool:storage","color": "red"}
function worldtool:ui/anti_feedback_chat_message/load
