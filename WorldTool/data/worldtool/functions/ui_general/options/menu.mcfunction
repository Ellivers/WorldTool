# Called by worldtool:ui_general/click/options and worldtool:ui_general/click/options_use
# The main options menu

scoreboard players operation #ID_temp worldtool = @s wt.ID

scoreboard players set #temp3 worldtool 0
function worldtool:technical/common/get_position_counts
execute if score #pos1count worldtool matches 1 if score #pos2count worldtool matches 1 run scoreboard players set #temp3 worldtool -1

execute if predicate worldtool:tools/general/pastepos run function worldtool:ui/sound.change_item
execute if predicate worldtool:tools/general/pastepos run item modify entity @s weapon.mainhand worldtool:general_tool/pos1

function worldtool:ui/open_tool
function worldtool:ui/back_button

execute unless entity @s[tag=!wt.helper_particles.in_menu,tag=!wt.helper_particles.always] run function worldtool:ui_general/arrange_positions/load

tag @s add wt.user
tag @s add wt.menu.options
tag @s add wt.reopen_after_reload

function #rx.playerdb:api/v2/get/self

function worldtool:ui/undo_redo/display

execute if score #temp3 worldtool matches -1 if score $playerdbAvailable worldtool matches 1 if data storage rx.playerdb:io player.data.WorldTool.Clipboard run tellraw @s ["",{"nbt":"Translation.\"button.copy_area.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.copy_area.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:technical/save_load/copy_start"}}," ",{"nbt":"Translation.\"button.paste_area.name\"","storage": "worldtool:storage","color": "#06c248","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.paste_area.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/paste/menu"}}]
execute if score #temp3 worldtool matches -1 if score $playerdbAvailable worldtool matches 1 unless data storage rx.playerdb:io player.data.WorldTool.Clipboard run tellraw @s ["",{"nbt":"Translation.\"button.copy_area.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.copy_area.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:technical/save_load/copy_start"}}," ",{"nbt":"Translation.\"button.paste_area.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.paste_area.description\"","storage": "worldtool:storage"}}}]
execute unless score #temp3 worldtool matches -1 if score $playerdbAvailable worldtool matches 1 if data storage rx.playerdb:io player.data.WorldTool.Clipboard run tellraw @s ["",{"nbt":"Translation.\"button.copy_area.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.no_positions.description\"","storage": "worldtool:storage"}}}," ",{"nbt":"Translation.\"button.paste_area.name\"","storage": "worldtool:storage","color": "#06c248","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.paste_area.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/paste/menu"}}]
execute unless score #temp3 worldtool matches -1 if score $playerdbAvailable worldtool matches 1 unless data storage rx.playerdb:io player.data.WorldTool.Clipboard run tellraw @s ["",{"nbt":"Translation.\"button.copy_area.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.no_positions.description\"","storage": "worldtool:storage"}}}," ",{"nbt":"Translation.\"button.paste_area.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.paste_area.description\"","storage": "worldtool:storage"}}}]

tellraw @s ["\n",{"nbt":"Translation.\"button.selection_options.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.selection_options.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/selection/menu"}}]

function worldtool:ui/particles/display_option

tellraw @s ["\n",{"nbt":"Translation.\"button.settings.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.settings.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/menu"}}," ",{"nbt":"Translation.\"button.adjust_positions.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.adjust_positions.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/load"}}]

tellraw @s ["\n",{"nbt":"Translation.\"button.kill_process.name\"","storage": "worldtool:storage","color": "red","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.kill_process.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/kill_process"}}," ",{"nbt":"Translation.\"button.empty_queue.name\"","storage": "worldtool:storage","color": "#b5146d","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.empty_queue.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/empty_queue"}}]

function worldtool:ui/anti_feedback_chat_message/load
