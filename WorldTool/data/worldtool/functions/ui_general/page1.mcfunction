# Called by worldtool:ui_general/load
# Page 1 of the general tool's menu

tag @s[tag=!wt.user] add wt.clone.at_player
function worldtool:ui/open_tool
tag @s add wt.in_menu
tag @s add wt.menu.general.p1
function worldtool:ui_general/remove_submenu_tags

function worldtool:ui/start_input/primary

# Particles
execute if entity @s[tag=wt.helper_particles] run function worldtool:ui_general/arrange_positions/load

# Display

function worldtool:ui/back_button

tellraw @s [{"nbt":"Translation.\"label.fill\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.select_block.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.fill.select_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = @p wt.ID at @s run setblock ~1 ~ ~ "}}," ",{"nbt":"Translation.\"button.pick_block.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.pick_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/pick_block/primary"}}," ",{"nbt":"Translation.\"button.air.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.fill.air.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/fill/start"}},"\n"]
tellraw @s ["",{"nbt":"Translation.\"button.replace.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.replace.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/replace/menu"}}," ",{"nbt":"Translation.\"button.measure.name\"","storage": "worldtool:storage","color": "#264fff","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.measure.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/measure/menu"}}," ",{"nbt":"Translation.\"button.clone.name\"","storage": "worldtool:storage","color": "dark_blue","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.clone.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/load"}}," ",{"nbt":"Translation.\"button.randomize.name\"","storage": "worldtool:storage","color": "dark_aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.randomize.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/randomize/load"}}]

function worldtool:ui/close_button

tellraw @s ["\n",{"nbt":"Translation.\"label.page\"","storage": "worldtool:storage"},"1",{"nbt":"Translation.\"button.right.name\"","storage": "worldtool:storage","bold": true,"color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.next_page.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/page2"}}]


function worldtool:ui/anti_feedback_chat_message/load
