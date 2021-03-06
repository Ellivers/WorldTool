# Called by worldtool:ui_general/load
# Code for page 1 of the general tool's menu

tag @s[tag=!wt.outline_selection] add wt.outline_selection
tag @s add wt.user

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run function worldtool:ui_general/page1.display

tellraw @s ["\n",{"nbt":"Translation.\"label.page\"","storage": "worldtool:storage"},"1",{"nbt":"Translation.\"button.increase\"","storage": "worldtool:storage","bold": true,"color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.general.next_page.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/page2"}}]

function worldtool:ui/anti_feedback_chat_message/load
