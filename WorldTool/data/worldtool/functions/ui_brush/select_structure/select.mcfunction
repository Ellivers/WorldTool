# Called by worldtool:ui_brush/menu
# Menu for selecting a structure to place

function worldtool:ui_brush/check_tool

function worldtool:ui/clear_chat
function worldtool:ui_brush/back_button

function worldtool:pick_block/other/remove_tags

tag @s add wt.allow_input
tag @s add wt.brush.select_structure

function worldtool:technical/common/get_item_data
execute if data storage worldtool:storage Temp.ItemData.WorldTool.BrushSettings.Structure run tellraw @s [{"nbt":"Translation.\"info.selected_structure\"","storage": "worldtool:storage"},{"nbt":"Temp.ItemData.WorldTool.BrushSettings.Structure","storage": "worldtool:storage","color": "green"}]

tellraw @s ["\n",{"nbt":"Translation.\"button.select_structure.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.select_structure.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon item ~ ~ ~ {Tags:[worldtool,wt.selected_data],PickupDelay:32767s,Item:{id:\"minecraft:stick\",Count:1b,tag:{WorldTool:{Structure:\"NAME_HERE\"}}}}"}}]
function worldtool:ui/anti_feedback_chat_message/load
