# Called by worldtool:ui_general/clone/menu
# The different clone modes to select from

function worldtool:ui/clear_chat
tag @s add wt.menu.clone.select_mode

function worldtool:ui/back_button

tellraw @s[tag=wt.clone.mode.standard] {"nbt":"Translation.\"button.clone.mode.standard.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.clone.mode.standard.description\"","storage": "worldtool:storage"}}}
tellraw @s[tag=!wt.clone.mode.standard] {"nbt":"Translation.\"button.clone.mode.standard.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.clone.mode.standard.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/select_mode/standard"}}

tellraw @s[tag=wt.clone.mode.template] {"nbt":"Translation.\"button.clone.mode.template.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.clone.mode.template.description\"","storage": "worldtool:storage"}}}
execute if score $playerdbAvailable worldtool matches 1 run tellraw @s[tag=!wt.clone.mode.template] {"nbt":"Translation.\"button.clone.mode.template.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.clone.mode.template.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/select_mode/template"}}
execute unless score $playerdbAvailable worldtool matches 1 run tellraw @s {"nbt":"Translation.\"info.clone.additional_modes_unavailable\"","storage": "worldtool:storage","color": "gray"}

function worldtool:ui/anti_feedback_chat_message/load
