# Called by worldtool:ui_shapes/menu
# Menu for adjusting the position marker's... position

function worldtool:ui/clear_chat
function worldtool:ui_shapes/back_button

tag @s add wt.allow_input
tag @s add wt.menu.shapes.adjust_position

scoreboard players reset #pos1xt worldtool

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/common/temp_pos1

execute if score #pos1xt worldtool matches -2147483648.. run tellraw @s [{"nbt":"Translation.\"info.measure.position\"","storage":"worldtool:storage","interpret":true},"\n"]

tellraw @s [{"nbt":"Translation.\"button.negative_x.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.nudge_position.negative_x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/adjust_position/-x"}}," ",{"nbt":"Translation.\"button.positive_x.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.nudge_position.positive_x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/adjust_position/x"}}]
tellraw @s [{"nbt":"Translation.\"button.negative_y.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.nudge_position.negative_y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/adjust_position/-y"}}," ",{"nbt":"Translation.\"button.positive_y.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.nudge_position.positive_y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/adjust_position/y"}}]
tellraw @s [{"nbt":"Translation.\"button.negative_z.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.nudge_position.negative_z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/adjust_position/-z"}}," ",{"nbt":"Translation.\"button.positive_z.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.nudge_position.positive_z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/adjust_position/z"}}]

tellraw @s ["\n",{"nbt":"Translation.\"button.set_position.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.set_position.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon item ~ ~ ~ {Tags:[worldtool,wt.selected_data],PickupDelay:32767s,Item:{id:\"minecraft:stick\",Count:1b,tag:{WorldTool:{ Position:[0d,0d,0d] }}}}"}}]

function worldtool:ui/anti_feedback_chat_message/load