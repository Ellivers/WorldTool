# Called by worldtool:ui_general/options/adjust_positions/load and by various other functions
# Displays the menu for adjusting positions

execute if entity @s[tag=wt.helper_particles.in_menu] run function worldtool:ui_general/arrange_positions/load

function worldtool:ui/clear_chat
function worldtool:ui/back_button

tag @s add wt.menu.adjust_positions
tag @s add wt.allow_input

scoreboard players operation #ID_temp worldtool = @s wt.ID

scoreboard players set #temp1 worldtool 0
scoreboard players set #temp2 worldtool 0
scoreboard players set #pos1yt worldtool -2147483648
scoreboard players set #pos2yt worldtool -2147483648
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.position] if score @s wt.ID = #ID_temp worldtool run function worldtool:ui_general/options/adjust_positions/entity

execute store result score #pos1Here worldtool unless score #pos1yt worldtool matches -2147483648
execute store result score #pos2Here worldtool unless score #pos2yt worldtool matches -2147483648
execute if score #pos1Here worldtool matches 1 run tellraw @s [{"nbt":"Translation.\"info.measure.position.1\"","storage":"worldtool:storage","interpret":true}," ",{"nbt":"Translation.\"button.teleport.name\"","storage": "worldtool:storage","color": "#d534eb","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.teleport.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/teleport/pos1"}}]
execute if score #pos2Here worldtool matches 1 run tellraw @s [{"nbt":"Translation.\"info.measure.position.2\"","storage":"worldtool:storage","interpret":true}," ",{"nbt":"Translation.\"button.teleport.name\"","storage": "worldtool:storage","color": "#d534eb","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.teleport.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/teleport/pos2"}}]
execute if score #pos1Here worldtool matches 0 if score #pos2Here worldtool matches 0 run tellraw @s {"nbt":"Translation.\"info.both_pos_unset\"","storage":"worldtool:storage","color": "red"}

tellraw @s ["\n",{"nbt":"Translation.\"button.set_positions.name\"","storage": "worldtool:storage","color": "aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.set_positions.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon item ~ ~ ~ {Tags:[worldtool,wt.selected_data],PickupDelay:32767s,Item:{id:\"minecraft:stick\",Count:1b,tag:{WorldTool:{ Pos1:[0d,0d,0d], Pos2:[0d,0d,0d] }}}}"}}]
execute if score #pos1Here worldtool matches 1 if score #pos2Here worldtool matches 1 run tellraw @s {"nbt":"Translation.\"button.swap_positions.name\"","storage": "worldtool:storage","color": "#4cd10f","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.swap_positions.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/swap_positions"}}
execute if score #pos1Here worldtool matches 1 if score #pos2Here worldtool matches 1 run tellraw @s ["",{"nbt":"Translation.\"button.shrink_area.name\"","storage": "worldtool:storage","color": "dark_aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shrink_area.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/area_shrink/load"}}," ",{"nbt":"Translation.\"button.grow_area.name\"","storage": "worldtool:storage","color": "dark_aqua","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.grow_area.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/area_grow/load"}}]
tellraw @s ""

execute if score #temp1 worldtool matches 1.. if score #temp2 worldtool matches 1.. run tellraw @s ["",{"nbt":"Translation.\"button.position_1.on\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.position_1.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/toggle_positions/pos1_toggle"}}," ",{"nbt":"Translation.\"button.position_2.on\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.position_2.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/toggle_positions/pos2_toggle"}}]
execute if score #temp1 worldtool matches 1.. unless score #temp2 worldtool matches 1.. run tellraw @s ["",{"nbt":"Translation.\"button.position_1.on\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.position_1.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/toggle_positions/pos1_toggle"}}," ",{"nbt":"Translation.\"button.position_2.off\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.position_2.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/toggle_positions/pos2_toggle"}}]
execute unless score #temp1 worldtool matches 1.. if score #temp2 worldtool matches 1.. run tellraw @s ["",{"nbt":"Translation.\"button.position_1.off\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.position_1.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/toggle_positions/pos1_toggle"}}," ",{"nbt":"Translation.\"button.position_2.on\"","storage": "worldtool:storage","color": "yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.position_2.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/toggle_positions/pos2_toggle"}}]
execute unless score #temp1 worldtool matches 1.. unless score #temp2 worldtool matches 1.. run tellraw @s ["",{"nbt":"Translation.\"button.position_1.off\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.position_1.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/toggle_positions/pos1_toggle"}}," ",{"nbt":"Translation.\"button.position_2.off\"","storage": "worldtool:storage","color": "#babd37","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.position_2.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/toggle_positions/pos2_toggle"}}]
tellraw @s ""

tellraw @s [{"nbt":"Translation.\"label.step_size\"","storage": "worldtool:storage","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"label.step_size.description\"","storage": "worldtool:storage"}}},{"nbt":"Translation.\"button.decrease.name\"","storage": "worldtool:storage","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.decrease.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/options/adjust_positions/nudge/step_size_decrease"}},{"score":{"name": "@s","objective": "wt.size"}},{"nbt":"Translation.\"button.increase.name\"","storage": "worldtool:storage","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.increase.description\"","storage": "worldtool:storage"}},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/options/adjust_positions/nudge/step_size_increase"}},"  ",{"nbt":"Translation.\"button.set_value.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.set_value.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "suggest_command","value": "/summon item ~ ~ ~ {Tags:[worldtool,wt.selected_data],PickupDelay:32767s,Item:{id:\"minecraft:stick\",Count:1b,tag:{WorldTool:{ StepSize:1 }}}}"}}]
tellraw @s ["",{"nbt":"Translation.\"button.negative_x.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.nudge_positions.negative_x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/nudge/-x"}}," ",{"nbt":"Translation.\"button.positive_x.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.nudge_positions.positive_x.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/nudge/x"}}]
tellraw @s ["",{"nbt":"Translation.\"button.negative_y.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.nudge_positions.negative_y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/nudge/-y"}}," ",{"nbt":"Translation.\"button.positive_y.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.nudge_positions.positive_y.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/nudge/y"}}]
tellraw @s ["",{"nbt":"Translation.\"button.negative_z.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.nudge_positions.negative_z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/nudge/-z"}}," ",{"nbt":"Translation.\"button.positive_z.name\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action": "show_text","value": {"nbt":"Translation.\"button.nudge_positions.positive_z.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/adjust_positions/nudge/z"}}]

function worldtool:ui/anti_feedback_chat_message/load
