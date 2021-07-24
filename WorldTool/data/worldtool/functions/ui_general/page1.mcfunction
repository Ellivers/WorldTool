# Called by worldtool:ui_general/load
# Code for page 1 of the general tool's menu

function worldtool:ui/open_tool

scoreboard players operation #ID_temp worldtool = @s wt.ID

function worldtool:ui/clear_chat
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run function worldtool:ui_general/page1.display

tellraw @s ["\n",{"nbt":"Translation.\"label.page\"","storage": "worldtool:storage"},"1",{"nbt":"Translation.\"button.increase\"","storage": "worldtool:storage","bold": true,"color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.general.next_page.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/page2"}}]

function worldtool:ui/anti_feedback_chat_message/load
