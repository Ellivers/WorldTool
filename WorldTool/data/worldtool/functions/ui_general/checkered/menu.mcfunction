# Called by worldtool:ui_general/checkered/load and various other functions
# Displays the checkered menu

function worldtool:ui/clear_chat
function worldtool:ui_general/back_button

function worldtool:ui_general/input/reset_primary

tag @s add wt.menu.checkered

tellraw @s[tag=wt.checkered.alternate.x,tag=wt.checkered.alternate.y,tag=wt.checkered.alternate.z] ["",{"nbt":"Translation.\"label.checkered.alternating_axes\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.x.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/x"}}," ",{"nbt":"Translation.\"button.y.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/y"}}," ",{"nbt":"Translation.\"button.z.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/z"}}]
tellraw @s[tag=!wt.checkered.alternate.x,tag=wt.checkered.alternate.y,tag=wt.checkered.alternate.z] ["",{"nbt":"Translation.\"label.checkered.alternating_axes\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.x.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/x"}}," ",{"nbt":"Translation.\"button.y.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/y"}}," ",{"nbt":"Translation.\"button.z.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/z"}}]
tellraw @s[tag=wt.checkered.alternate.x,tag=!wt.checkered.alternate.y,tag=wt.checkered.alternate.z] ["",{"nbt":"Translation.\"label.checkered.alternating_axes\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.x.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/x"}}," ",{"nbt":"Translation.\"button.y.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/y"}}," ",{"nbt":"Translation.\"button.z.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/z"}}]
tellraw @s[tag=wt.checkered.alternate.x,tag=wt.checkered.alternate.y,tag=!wt.checkered.alternate.z] ["",{"nbt":"Translation.\"label.checkered.alternating_axes\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.x.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/x"}}," ",{"nbt":"Translation.\"button.y.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/y"}}," ",{"nbt":"Translation.\"button.z.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/z"}}]
tellraw @s[tag=!wt.checkered.alternate.x,tag=!wt.checkered.alternate.y,tag=wt.checkered.alternate.z] ["",{"nbt":"Translation.\"label.checkered.alternating_axes\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.x.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/x"}}," ",{"nbt":"Translation.\"button.y.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/y"}}," ",{"nbt":"Translation.\"button.z.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/z"}}]
tellraw @s[tag=wt.checkered.alternate.x,tag=!wt.checkered.alternate.y,tag=!wt.checkered.alternate.z] ["",{"nbt":"Translation.\"label.checkered.alternating_axes\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.x.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/x"}}," ",{"nbt":"Translation.\"button.y.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/y"}}," ",{"nbt":"Translation.\"button.z.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/z"}}]
tellraw @s[tag=!wt.checkered.alternate.x,tag=wt.checkered.alternate.y,tag=!wt.checkered.alternate.z] ["",{"nbt":"Translation.\"label.checkered.alternating_axes\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.x.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/x"}}," ",{"nbt":"Translation.\"button.y.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/y"}}," ",{"nbt":"Translation.\"button.z.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/z"}}]
tellraw @s[tag=!wt.checkered.alternate.x,tag=!wt.checkered.alternate.y,tag=!wt.checkered.alternate.z] ["",{"nbt":"Translation.\"label.checkered.alternating_axes\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.x.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/x"}}," ",{"nbt":"Translation.\"button.y.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/y"}}," ",{"nbt":"Translation.\"button.z.name\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.alternate_z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/z"}}]

tellraw @s[tag=wt.checkered.start_with_block] {"nbt":"Translation.\"button.checkered.start_with_block.on\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.start_with_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/start_with_block"}}
tellraw @s[tag=!wt.checkered.start_with_block] {"nbt":"Translation.\"button.checkered.start_with_block.off\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.checkered.start_with_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/toggle/start_with_block"}}
tellraw @s[tag=!wt.two_block_query.normal,tag=!wt.two_block_query.exclude] {"nbt":"Translation.\"button.replace.off\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.replace.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/replace_on"}}
execute unless entity @s[tag=!wt.two_block_query.normal,tag=!wt.two_block_query.exclude] run tellraw @s {"nbt":"Translation.\"button.replace.on\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.replace.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/load"}}

tellraw @s ["\n",{"nbt":"Translation.\"button.select_block.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.fill.select_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = @p wt.ID at @s run setblock ~1 ~ ~ "}}," ",{"nbt":"Translation.\"button.pick_block.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.pick_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/pick_block/primary"}}," ",{"nbt":"Translation.\"button.air.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.air.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/checkered/start"}}]

function worldtool:ui/close_button

function worldtool:ui/anti_feedback_chat_message/load
