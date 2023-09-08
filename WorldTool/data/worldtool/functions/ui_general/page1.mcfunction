# Called by worldtool:ui_general/load
# Page 1 of the General Tool's menu

tag @s[tag=!wt.user] add wt.clone.at_player
function worldtool:ui/open_tool
tag @s add wt.user
tag @s add wt.in_menu
tag @s add wt.menu.general.page1
function worldtool:ui_general/remove_submenu_tags/load

# Particles
execute if entity @s[tag=wt.helper_particles.in_menu] run function worldtool:ui_general/arrange_positions/load

# Display

function worldtool:ui/back_button

function worldtool:ui_general/keep/button

tellraw @s [{"nbt":"Translation.\"label.fill\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.select_block.run.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.fill.select_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = @p wt.ID at @s run setblock ~1 ~ ~ "}}," ",{"nbt":"Translation.\"button.pick_block.run.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.pick_block.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/pick_block/primary"}}," ",{"nbt":"Translation.\"button.air.run.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.fill.air.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/fill/start"}},"\n"]
tellraw @s ["",{"nbt":"Translation.\"button.replace.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.replace.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/replace/menu"}}," ",{"nbt":"Translation.\"button.measure.name\"","storage": "worldtool:storage","color": "#264fff","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.measure.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/measure/menu"}}," ",{"nbt":"Translation.\"button.clone.name\"","storage": "worldtool:storage","color": "dark_blue","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.clone.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/load"}}," ",{"nbt":"Translation.\"button.repeat.name\"","storage": "worldtool:storage","color": "#73086a","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.repeat.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/repeat/load"}}," ",{"nbt":"Translation.\"button.randomize.name\"","storage": "worldtool:storage","color": "dark_aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.randomize.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/randomize/load"}}," ",{"nbt":"Translation.\"button.shell.name\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shell.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/shell/load"}},"\n",{"nbt":"Translation.\"button.outline.name\"","storage": "worldtool:storage","color": "#4929ff","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.outline.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/outline/load"}}]

scoreboard players set #currentPage worldtool 1
scoreboard players set #pageCount worldtool 2
tellraw @s ["\n",{"nbt":"Translation.\"label.page\"","storage": "worldtool:storage"},{"nbt":"Translation.\"button.left.name\"","storage": "worldtool:storage","bold": true,"color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.previous_page.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/page2"}},{"nbt":"Translation.\"info.page_number\"","storage": "worldtool:storage","interpret": true},{"nbt":"Translation.\"button.right.name\"","storage": "worldtool:storage","bold": true,"color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.next_page.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/page2"}},"    ",{"nbt":"Translation.\"button.close.name\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.close.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/close"}}]


function worldtool:ui/anti_feedback_chat_message/load

function worldtool:ui_general/input/start/primary
