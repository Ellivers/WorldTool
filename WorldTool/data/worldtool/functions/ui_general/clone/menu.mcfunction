# Called by worldtool:ui_general/page_1
# Shows the clone menu

function worldtool:ui/clear_chat
function worldtool:ui_general/back_button

tag @s remove wt.clone.move
tag @s add wt.menu.clone

execute if entity @s[tag=wt.helper_particles] run tag @s add wt.particles

tag @s[tag=wt.clone.mode.template] remove wt.clone.mirror.y
execute if entity @s[tag=wt.clone.mode.template] run scoreboard players set @s wt.rotX 0
execute if entity @s[tag=wt.clone.mode.template] run scoreboard players set @s wt.rotZ 0

scoreboard players operation #ID_temp worldtool = @s wt.ID
execute as @e[type=minecraft:armor_stand,tag=worldtool,tag=wt.rotation_preview] if score @s wt.ID = #ID_temp worldtool run kill @s

execute if predicate worldtool:tools/general/clonepos run function worldtool:ui/sound.change_item
execute if predicate worldtool:tools/general/clonepos run item modify entity @s weapon.mainhand worldtool:general_tool/pos1

function worldtool:ui_general/clone/display_rotation

tellraw @s[tag=wt.clone.at_player] ["",{"nbt":"Translation.\"button.clone.player_pos.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action":"show_text","contents": {"nbt":"Translation.\"button.clone.player_pos.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value":"/function worldtool:ui_general/clone/settings/destination_pos"}}]
tellraw @s[tag=!wt.clone.at_player] ["",{"nbt":"Translation.\"button.clone.block_pos.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action":"show_text","contents": {"nbt":"Translation.\"button.clone.block_pos.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value":"/function worldtool:ui_general/clone/settings/destination_pos"}}]
tellraw @s[tag=wt.clone.mode.standard] {"nbt":"Translation.\"button.clone.current_mode.standard\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.clone.current_mode.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/select_mode/menu"}}
tellraw @s[tag=wt.clone.mode.template] {"nbt":"Translation.\"button.clone.current_mode.template\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.clone.current_mode.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/clone/select_mode/menu"}}

tellraw @s[tag=!wt.two_block_query.normal,tag=!wt.two_block_query.exclude,tag=wt.clone.mode.standard] ["\n",{"nbt":"Translation.\"button.clone.filter.off\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action":"show_text","contents": {"nbt":"Translation.\"button.clone.filter.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value":"/function worldtool:ui_general/clone/filter_on"}}," ",{"nbt":"Translation.\"button.clone.rotate.name\"","storage": "worldtool:storage","color": "#9122d6","hoverEvent": {"action":"show_text","contents": {"nbt":"Translation.\"button.clone.rotate.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value":"/function worldtool:ui_general/clone/rotation_menu/load"}}]
execute unless entity @s[tag=!wt.two_block_query.normal,tag=!wt.two_block_query.exclude] run tellraw @s[tag=wt.clone.mode.standard] ["\n",{"nbt":"Translation.\"button.clone.filter.on\"","storage": "worldtool:storage","color": "gold","hoverEvent": {"action":"show_text","contents": {"nbt":"Translation.\"button.clone.filter.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value":"/function worldtool:ui_general/clone/load"}}," ",{"nbt":"Translation.\"button.clone.rotate.name\"","storage": "worldtool:storage","color": "#9122d6","hoverEvent": {"action":"show_text","contents": {"nbt":"Translation.\"button.clone.rotate.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value":"/function worldtool:ui_general/clone/rotation_menu/load"}}]
tellraw @s[tag=wt.clone.mode.template] ["\n",{"nbt":"Translation.\"button.clone.rotate.name\"","storage": "worldtool:storage","color": "#9122d6","hoverEvent": {"action":"show_text","contents": {"nbt":"Translation.\"button.clone.rotate.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value":"/function worldtool:ui_general/clone/rotation_menu/load"}}]

tellraw @s[tag=wt.clone.at_player] ["\n",{"nbt":"Translation.\"button.clone.copy.player_pos\"","storage": "worldtool:storage","color": "dark_green","clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/clone/start"},"hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.clone.copy.description\"","storage": "worldtool:storage"}}}," ",{"nbt":"Translation.\"button.clone.move.player_pos\"","storage": "worldtool:storage","color": "dark_purple","clickEvent":{"action": "run_command","value": "/function worldtool:ui_general/clone/start_move"},"hoverEvent":{"action":"show_text","contents":{"nbt":"Translation.\"button.clone.move.description\"","storage": "worldtool:storage"}}}]
tellraw @s[tag=!wt.clone.at_player] ["\n",{"nbt":"Translation.\"button.clone.copy.block_pos\"","storage": "worldtool:storage","color": "dark_green","clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/clone/select_destination/start"},"hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.clone.copy.description\"","storage": "worldtool:storage"}}}," ",{"nbt":"Translation.\"button.clone.move.block_pos\"","storage": "worldtool:storage","color": "dark_purple","clickEvent":{"action": "run_command","value": "/function worldtool:ui_general/clone/select_destination/move"},"hoverEvent":{"action":"show_text","contents":{"nbt":"Translation.\"button.clone.move.description\"","storage": "worldtool:storage"}}}]

function worldtool:ui/close_button

function worldtool:ui/anti_feedback_chat_message/load
